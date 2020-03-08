# create configmap: env-config
kubectl apply -f env-config.yaml

# create env-secret
kubectl apply -f db-secrets.yaml

# create AWS secrets
kubectl apply -f aws-secrets.yaml

# create deployments
kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-feed-service.yaml
kubectl apply -f backend-user-deployment.yaml
kubectl apply -f backend-user-service.yaml
kubectl apply -f frontend-deployment.yaml
kubectl apply -f frontend-service.yaml
kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f reverseproxy-service.yaml
