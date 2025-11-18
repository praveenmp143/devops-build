#!/bin/bash
set -e

echo "Applying Kubernetes manifests..."

kubectl apply -f eks/deployment.yaml
kubectl apply -f eks/k8s/service.yaml

echo "Deployment completed."