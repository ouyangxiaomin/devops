wordpress-mysql on localhost
1. kubectl create secret generic mysql-pass --from-file=password.txt
2. kubectl create -f local-volumes.yaml (if the volume is GCE, please use gce-volumes.yaml)
3. kubectl create -f mysql-deployment.yaml
4. kubectl create -f wordpress-deployment.yaml
