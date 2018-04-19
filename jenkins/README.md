Jenkins Get Start
1. kubectl create -f jenkins-deployment.yaml
2. kubectl create -f jenkins-service.yaml
3. http://x.x.x.x:xxxx

Name: k8s_cluster
a. Kubernetes URL: https://kubernetes.default
b. Kubernetes Namespace: default
c. Jenkins URL: http://jenkins.default:8080
d. images - Kubernetes Pod Template:
e. Name: jnlp-slave
f. Labels: jnlp-slave
g. Docker image: registry.xxxxx.com/jenkinsci/jnlp-slave:2.52
h. Jenkins slave root directory: /home/jenkins
