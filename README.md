# udagram-micro
Udagram project split into microservices, running on a kuberneted cluster in AWS.

- Used `kubeone` and `terraform` to create k8 cluster in AWS
- `travis-ci` manages the deployment
  - pushes the new docker image into the docker hub
  - restarts k8 deployments in a rolling-update so that there is zero downtime.

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
