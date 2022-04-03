rem aws eks update-kubeconfig --region us-east-1 --name MyUdagramEKS
rem kubectl get svc

kubectl apply -f ./udagram-deployment/aws-secret.yaml
kubectl apply -f ./udagram-deployment/env-secret.yaml
kubectl apply -f ./udagram-deployment/env-configmap.yaml
kubectl apply -f ./udagram-deployment/deployment-frontend.yaml
kubectl apply -f ./udagram-deployment/deployment-reverseproxy.yaml
kubectl apply -f ./udagram-deployment/deployment-backend-feed.yaml
kubectl apply -f ./udagram-deployment/deployment-backend-user.yaml
kubectl apply -f ./udagram-deployment/service-frontend.yaml
kubectl apply -f ./udagram-deployment/service-reverseproxy.yaml
kubectl apply -f ./udagram-deployment/service-backend-feed.yaml
kubectl apply -f ./udagram-deployment/service-backend-user.yaml

rem kubectl delete -f ./udagram-deployment/aws-secret.yaml
rem kubectl delete -f ./udagram-deployment/env-secret.yaml
rem kubectl delete -f ./udagram-deployment/env-configmap.yaml
rem kubectl delete -f ./udagram-deployment/deployment-frontend.yaml
rem kubectl delete -f ./udagram-deployment/deployment-reverseproxy.yaml
rem kubectl delete -f ./udagram-deployment/deployment-backend-feed.yaml
rem kubectl delete -f ./udagram-deployment/deployment-backend-user.yaml
rem kubectl delete -f ./udagram-deployment/service-frontend.yaml
rem kubectl delete -f ./udagram-deployment/service-reverseproxy.yaml
rem kubectl delete -f ./udagram-deployment/service-backend-feed.yaml
rem kubectl delete -f ./udagram-deployment/service-backend-user.yaml