- docker registry
1. docker run -d -p 5000:5000 --restart=always --name registry registry:2
2. docker pull hello-world
3. docker tag hello-world localhost:5000/hello-world:latest
4. docker push localhost:5000/hello-world
5. docker rmi hello-world localhost:5000/hello-world
6. docker pull localhost:5000/hello-world
7. docker stop registry && docker rm -v registry
8. docker build -t test .
9. docker tag test localhost:5000/test:0.1
10. docker push localhost:5000/test:0.1

- nginx init
1. kubectl apply -f nginx.yaml
2. kubectl scale deploy nginx --replicas=2
3. kubectl set image deploy nginx nginx=nginx:1.9.1
4. kubectl rollout undo deployment/nginx
5. curl http://x.x.x.x:30000

