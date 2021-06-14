#!/bin/bash

# Delete Argo namespace and running PODs on it
kubectl delete all --all -n argo
kubectl delete all --all -n monitor
kubectl delete namespaces argo monitor
# Terminate process running on Argo & SQLFlow Notebook
fuser -k 50051/tcp && fuser -k 9001/tcp && fuser -k 8000/tcp

# Install Argo
kubectl create namespace argo
kubectl create namespace monitor
kubectl create rolebinding default --clusterrole=admin --serviceaccount=default:default
kubectl create rolebinding sqlflow --clusterrole=admin --serviceaccount=default:sqlflow --namespace=default
kubectl create configmap -n argo workflow-controller-configmap --from-literal=config="containerRuntimeExecutor: pns"
kubectl apply -n argo -f https://raw.githubusercontent.com/argoproj/argo/v2.12.11/manifests/install.yaml

# Expose Argo workflow
while [ "$(kubectl get pods -n argo -o jsonpath='{.items[0].status.containerStatuses[*].ready}')" != "true" ]; do
   sleep 5
   echo "Waiting for Argo to be ready..."
done
# Port Forward argo-server port
kubectl label service argo-server app=workflow-controller --namespace argo
nohup kubectl -n argo port-forward svc/argo-server 9001:2746 --address=0.0.0.0 &

# Install SQLFlow chart
kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission
helm uninstall sqlflow
helm install sqlflow charts/sqlflow/

# Port Forward sqlflow-server
nohup kubectl port-forward deployment/sqlflow 50051:50051 --address=0.0.0.0 &
kubectl get pods --field-selector=status.phase!=Running -o name | xargs kubectl delete

# Install Grafana and Prometheus to collect metrics
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus-stack prometheus-community/kube-prometheus-stack --namespace monitor -f prometheus/values.yaml

kubectl delete validatingwebhookconfiguration prometheus-stack-kube-prom-admission
kubectl delete mutatingwebhookconfiguration prometheus-stack-kube-prom-admission

kubectl create role prometheus-k8s --namespace argo --resource services,endpoints,pods --verb get,list,watch
kubectl create rolebinding prometheus-k8s --namespace argo --role prometheus-k8s --serviceaccount monitor:prometheus-stack-kube-prom-prometheus
kubectl create -f prometheus/workflow-controller-metrics/workflow-controller-metrics-servicemonitor.yaml
nohup kubectl port-forward -n monitor service/prometheus-stack-grafana 8888:80 &
nohup kubectl port-forward -n monitor svc/prometheus-operated 9090:9090 --address=0.0.0.0 &