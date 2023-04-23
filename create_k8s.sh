#!/bin/bash
# Create EKS Cluster
eksctl create cluster -f kubernetes/eks-config.yml
# Run kubernetes deployment
kubectl create -f kubernetes/helloworld-deploy.yaml
# Run kubernetes service
kubectl create -f kubernetes/helloworld-service.yaml

kubectl get all
kubectl rollout status deployment/helloworld-deploy