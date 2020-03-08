# udagram-micro
Udagram project split into microservices, running on a kuberneted cluster in AWS.

- Used `kubeone` and `terraform` to create k8 cluster in AWS
- `travis-ci` manages the deployment
  - pushes the new docker image into the docker hub
  - restarts k8 deployments in a rolling-update so that there is zero downtime.
- Docker images are available at: [Docker Hub](https://hub.docker.com/u/vinayakvivekk)
  
### Running locally
- To build docker images, 
  ```bash
  docker-compose -f docker-compose-build.yaml build
  ```
- Set environmental variables
  ```bash
  export DB_USERNAME="udagramdev"
  export DB_PASSWORD="****"
  export DB_NAME="udagramdev"
  export DB_HOST="udagramdev.cghof*****.us-east-1.rds.amazonaws.com"
  export DB_DIALECT="postgres"

  export AWS_REGION="us-east-1"
  export AWS_PROFILE="default"
  export AWS_MEDIA_BUCKET="udagram-******"
  export JWT_SECRET="******"
  ```
- Start the microservices
  ```bash
  docker-compose up
  ```

### Screenshots
- Udagram running k8 and ports forwarded locally,
  
  ![udagram](https://github.com/vinayakvivek/udagram-micro/blob/master/submission/udagram.png)
  
- How port forwarding is done

  ![port-forward](https://github.com/vinayakvivek/udagram-micro/blob/master/submission/port-forward.png)
  
- Running pods
  
  ![pods](https://github.com/vinayakvivek/udagram-micro/blob/master/submission/pods.png)
  
- Travis CI - build success

  ![travis-ci](https://github.com/vinayakvivek/udagram-micro/blob/master/submission/travis-ci.png)
  
- Complete build logs: [travis.log](https://github.com/vinayakvivek/udagram-micro/blob/master/submission/travis.log)
