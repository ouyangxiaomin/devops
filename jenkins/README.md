Jenkins Get Start
1. kubectl create -f jenkins-deployment.yaml
2. kubectl create -f jenkins-service.yaml
3. http://x.x.x.x:xxxx

Name: k8s_cluster
1. Kubernetes URL: https://kubernetes.default
2. Kubernetes Namespace: default
3. Jenkins URL: http://jenkins.default:8080
4. images - Kubernetes Pod Template:
5. Name: jnlp-slave
6. Labels: jnlp-slave
7. Docker image: registry.xxxxx.com/jenkinsci/jnlp-slave:2.52
8. Jenkins slave root directory: /home/jenkins
