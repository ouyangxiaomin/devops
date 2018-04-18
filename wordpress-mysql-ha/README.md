kubectl create -f storage-class.yaml
kubectl create -f mysql-configmap.yaml
kubectl create -f mysql-services.yaml
kubectl create -f mysql-statefulset.yaml
kubectl logs -f -c <container_name>
### waiting for pod sync ###
kubectl create -f nfs.yaml
kubectl describe services nfs-server (get the IP for further use)
kubectl create -f wordpress.yaml
kubectl get services wordpress (get the external IP for loadbalance)
