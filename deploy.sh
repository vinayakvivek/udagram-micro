echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push $DOCKER_USERNAME/udacity-user-restapi
docker push $DOCKER_USERNAME/udacity-feed-restapi
docker push $DOCKER_USERNAME/udacity-frontend
docker push $DOCKER_USERNAME/udacity-reverse-proxy
