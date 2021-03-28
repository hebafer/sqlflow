#!/bin/bash

# Delete Argo namespace and running PODs on it
kubectl delete namespaces argo

# Delete running SQLFlow
kubectl delete --all pods --namespace=default
kubectl delete pods sqlflow-server

# Terminate process running on Argo & SQLFlow Notebook
fuser -k 9001/tcp && fuser -k 8000/tcp

# Install Argo
kubectl create namespace argo
kubectl apply -n argo -f https://raw.githubusercontent.com/argoproj/argo/v2.7.7/manifests/install.yaml

# Expose Argo workflow
while [ "$(kubectl get pods -n argo -o jsonpath='{.items[0].status.containerStatuses[*].ready}')" != "true" ]; do
   sleep 5
   echo "Waiting for Argo to be ready..."
done

nohup kubectl -n argo port-forward deployment/argo-server 9001:2746 --address=0.0.0.0 &

# Install SQLFlow and its dependencies
kubectl apply -f doc/run/k8s/install-sqlflow-multi-users.yaml

#Wait until MySQL Database is ready
while [ "$(kubectl get pods -l=app='sqlflow-server' -o jsonpath='{.items[*].status.containerStatuses[*].ready}')" != "true" ]; do
   sleep 10
   echo "Waiting for SQLFlow database to be ready..."
done

# Expose Jupyter Notebook
#nohup kubectl port-forward pod/sqlflow-server 8888:8888 --address=0.0.0.0 &
nohup kubectl port-forward deployment/sqlflow-jupyterhub 8000:8000 --address=0.0.0.0 &
