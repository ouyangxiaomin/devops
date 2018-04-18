### wordpress-mysql-ha ###
1. kubectl create -f storage-class.yaml
2. kubectl create -f mysql-configmap.yaml
3. kubectl create -f mysql-services.yaml
4. kubectl create -f mysql-statefulset.yaml
5. kubectl logs -f -c <container_name>, waiting for pod sync 
6. kubectl create -f nfs.yaml
7. kubectl describe services nfs-server (get the IP for further use)
8. kubectl create -f wordpress.yaml
9. kubectl get services wordpress (get the external IP for loadbalance)
