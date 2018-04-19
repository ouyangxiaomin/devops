Jenkins Get Start
1. kubectl create -f jenkins-deployment.yaml
2. kubectl create -f jenkins-service.yaml
3. http://x.x.x.x:xxxx

Name: k8s_cluster
Kubernetes URL: https://kubernetes.default
Kubernetes Namespace: default
Jenkins URL: http://jenkins.default:8080

images - Kubernetes Pod Template:
Name: jnlp-slave
Labels: jnlp-slave
Docker image: registry.xxxxx.com/jenkinsci/jnlp-slave:2.52
Jenkins slave root directory: /home/jenkins
