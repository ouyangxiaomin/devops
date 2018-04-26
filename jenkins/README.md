Jenkins Get Start
1. kubectl create -f jenkins-deployment.yaml
2. kubectl create -f jenkins-service.yaml
3. http://x.x.x.x:xxxx

Jenkins Version Build From Source
1. mv Dockerfile.jenkins-template Dockerfile
2. update version (also ensure the cksum correct)
3. docker build -t jenkins-xxx .
4. if you need package maven, please add maven commands before build, refer to Dockerfile.maven-template
