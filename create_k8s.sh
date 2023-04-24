#!/bin/bash

echo "Create k8s"

# Create EKS Cluster
eksctl create cluster -f kubernetes/eks-config.yml || true

aws eks update-kubeconfig --name helloworld --region us-east-1

# Run kubernetes deployment
kubectl create -f kubernetes/helloworld-deploy.yaml || kubectl apply -f kubernetes/helloworld-deploy.yaml
# Run kubernetes service
kubectl create -f kubernetes/helloworld-service.yaml || kubectl apply -f kubernetes/helloworld-service.yaml

kubectl get all
kubectl rollout status deployment/helloworld-deploy
kubectl rollout history deployment/helloworld-deploy