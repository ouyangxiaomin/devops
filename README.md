# devops

Notes: This is only supported in CentOS7.

1. git clone https://github.com/xianke9/devops.git
2. cd devops
3. ./install.sh


#################
- docker registry
1. docker run -d -p 5000:5000 --restart=always --name registry registry:2
2. docker pull hello-world
3. docker tag hello-world localhost:5000/hello-world:latest
4. docker push localhost:5000/hello-world
5. docker rmi hello-world localhost:5000/hello-world
6. docker pull localhost:5000/hello-world
7. docker stop registry && docker rm -v registry
8. copy Dockerfile & index.html /root/
9. docker build -t test .
10. docker tag test localhost:5000/test:0.1
11. docker push localhost:5000/test:0.1

- nginx init
1. kubectl apply -f /tmp/nginx.yaml
2. kubectl scale deploy nginx --replicas=2
3. kubectl set image deploy nginx nginx=nginx:1.9.1
4. kubectl rollout undo deployment/nginx
5. curl http://x.x.x.x:30000


#################
For commiter
1. ssh-keygen
2. cat /root/.ssh/id_rsa.pub
3. copy the contents in /root/.ssh/id_rsa.pub into https://github.com/settings/keys
4. git remote -v
5. git remote rm origin (if the origin is https not ssh)
6. git remote add origin git@github.com:username/repository.git
7. git add .
8. git commit -m "test"
9. git push -u origin master (also you can skip the parm: -u origin master)


################
worldpress-mysql
1. export KUBE_REPO=https://raw.githubusercontent.com/kubernetes/kubernetes/master
2. kubectl create -f $KUBE_REPO/examples/mysql-wordpress-pd/local-volumes.yaml
3. kubectl create secret generic mysql-pass --from-file=password.txt
4. kubectl create -f $KUBE_REPO/examples/mysql-wordpress-pd/mysql-deployment.yaml
5. kubectl create -f $KUBE_REPO/examples/mysql-wordpress-pd/wordpress-deployment.yaml
