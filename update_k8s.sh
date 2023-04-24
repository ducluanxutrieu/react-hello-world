#/bin/bash

echo "Update k8s"
aws eks update-kubeconfig --name helloworld --region us-east-1
sed -i -e 's/v1alpha1/v1beta1/' ~/.kube/config
# Run kubernetes apply deployment
kubectl apply -f kubernetes/helloworld-deploy.yaml
# Run kubernetes service
kubectl apply -f kubernetes/helloworld-service.yaml

kubectl get all
kubectl rollout status deployment/helloworld-deploy
kubectl rollout history deployment/helloworld-deploy