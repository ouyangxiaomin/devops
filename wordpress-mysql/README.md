wordpress-mysql on localhost
1. ./quickstart.sh
2. kubectl create -f local-volumes.yaml (if the volume is GCE, please use gce-volumes.yaml, also you can use the other share storage to replace it.)
3. kubectl create -f mysql-deployment.yaml
4. kubectl create -f wordpress-deployment.yaml
5. http://x.x.x.x:nnnn (nnnn is the nodeport in svc)

### git clone https://github.com/IBM/Scalable-WordPress-deployment-on-Kubernetes.git

