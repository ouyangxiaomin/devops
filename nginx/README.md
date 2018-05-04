1. echo '{ "insecure-registries":["x.x.x.x:5000"] }' > /etc/docker/daemon.json (docker)
- or
2. modify /lib/systemd/system/docker.service with "ExecStart=/usr/bin/dockerd --insecure-registry=9.110.85.100:5000" (docker-ce)

- docker registry
1. docker run -d -p 5000:5000 --restart=always --name registry registry:2
2. docker pull hello-world
3. docker tag hello-world x.x.x.x:5000/hello-world:latest
4. docker push x.x.x.x:5000/hello-world
5. docker rmi hello-world x.x.x.x:5000/hello-world
6. docker pull x.x.x.x:5000/hello-world
7. docker stop registry && docker rm -v registry
8. docker build -t test .
9. docker tag test x.x.x.x:5000/test:0.1
10. docker push x.x.x.x:5000/test:0.1

- nginx init
1. kubectl apply -f nginx-ing.yaml (nginx-ingress-controller or traefik must be deploy firstly)
2. kubectl scale deploy nginx --replicas=2
3. kubectl set image deploy nginx nginx=nginx:1.9.1
4. kubectl rollout undo deployment/nginx
5. curl http://x.x.x.x:30000

- curl 9.110.85.100 -H host:www.test.com
