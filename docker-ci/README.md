- We can configure all steps into Jenkins Pipeline to triger the CI/CD with Jenkinsfile

- If you want to try the manual steps, the following is for your reference:
1. edit the code
2. mvn build the source code to war package
3. edit Dockerfile
4. docker build
5. edit deploy and svc yaml
6. kubectl create -f xxx.yaml
7. http://x.x.x.x:30000/demo/TestController
