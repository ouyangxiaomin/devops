# devops

Notes: This is only supported in CentOS7.

1. git clone https://github.com/xianke9/devops.git
2. cd devops
3. ./install.sh


#################
- name: docker registry
  shell: "docker run -d -p 5000:5000 --restart=always --name registry registry:2"
  shell: "docker pull hello-world"
  shell: "docker tag hello-world localhost:5000/hello-world:latest"
  shell: "docker push localhost:5000/hello-world"
  shell: "docker rmi hello-world localhost:5000/hello-world"
  shell: "docker pull localhost:5000/hello-world"
  shell: "docker stop registry && docker rm -v registry"
  shell: "copy Dockerfile & index.html /root/"
  shell: "docker build -t test ."
  shell: "docker tag test localhost:5000/test:0.1"
  shell: "docker push localhost:5000/test:0.1"

- name: nginx init
  shell: "kubectl apply -f /tmp/nginx.yaml"

