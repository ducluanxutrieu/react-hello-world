#!/bin/bash

echo "Create k8s"

# Create EKS Cluster
eksctl create cluster -f kubernetes/eks-config.yml

aws eks update-kubeconfig --name helloworld --region us-east-1
sed -i -e 's/v1alpha1/v1beta1/' ~/.kube/config

# Run kubernetes deployment
kubectl create -f kubernetes/helloworld-deploy.yaml
# Run kubernetes service
kubectl create -f kubernetes/helloworld-service.yaml

kubectl get all
kubectl rollout status deployment/helloworld-deploy