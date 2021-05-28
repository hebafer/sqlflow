#!/bin/bash

# Delete Argo namespace and running PODs on it
kubectl delete all --all -n argo
kubectl delete namespaces argo
# Terminate process running on Argo & SQLFlow Notebook
fuser -k 9001/tcp && fuser -k 8000/tcp

# Install Argo
kubectl create namespace argo
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
nohup kubectl -n argo port-forward deployment/argo-server 9001:2746 --address=0.0.0.0 &

# Install chart
kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission
helm uninstall sqlflow
helm install sqlflow charts/sqlflow/

# Port Forward sqlflow-jupyterhub and sqlflow-server
nohup kubectl port-forward deployment/sqlflow 50051:50051 --address=0.0.0.0 &
#nohup kubectl port-forward deployment/sqlflow 8000:8000 --address=0.0.0.0 &

#kubectl get pods --field-selector=status.phase!=Running -o name | xargs kubectl delete