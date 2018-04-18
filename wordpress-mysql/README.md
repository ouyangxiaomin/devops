wordpress-mysql on localhost
1. ./quickstart.sh
2. kubectl create -f local-volumes.yaml (if the volume is GCE, please use gce-volumes.yaml)
3. kubectl create -f mysql-deployment.yaml
4. kubectl create -f wordpress-deployment.yaml

### git clone https://github.com/IBM/Scalable-WordPress-deployment-on-Kubernetes.git

