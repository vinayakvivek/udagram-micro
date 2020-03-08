echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push $DOCKER_USERNAME/udacity-user-restapi
docker push $DOCKER_USERNAME/udacity-feed-restapi
docker push $DOCKER_USERNAME/udacity-frontend
docker push $DOCKER_USERNAME/udacity-reverse-proxy
kubectl rollout restart deployment/backend-user
kubectl rollout restart deployment/backend-feed
kubectl rollout restart deployment/frontend
kubectl rollout restart deployment/reverseproxy
