#!/bin/bash

nohup kubectl -n argo port-forward svc/argo-server 9001:2746 --address=0.0.0.0 &
nohup kubectl port-forward deployment/sqlflow 50051:50051 --address=0.0.0.0 &
nohup kubectl port-forward -n monitor service/prometheus-stack-grafana 8888:80 &
nohup kubectl port-forward -n monitor svc/prometheus-operated 9090:9090 --address=0.0.0.0 &