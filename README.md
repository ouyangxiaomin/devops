# devops

Notes: This is only supported in CentOS7.

1. git clone https://github.com/xianke9/devops.git
2. cd devops
3. ./install.sh


#################
- name: docker registry
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

- name: nginx init
kubectl apply -f /tmp/nginx.yaml

