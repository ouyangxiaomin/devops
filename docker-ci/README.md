- We can configure all steps into Jenkins Pipeline to triger the CI/CD with Jenkinsfile

- If you want to try the manual steps, the following is for your reference:
1. edit the code
2. mvn build the source code to war package
3. edit Dockerfile
4. docker build
5. initial deploy and svc yaml
6. kubectl create -f xxx.yaml
7. http://x.x.x.x:30000/demo/TestController
8. once we update the code, we can repeat step1-step7:
- step 5/6 replace with "kubectl set image deploy/deploy-$envTag-tomcat container-$envTag-tomcat=x.x.x.x/library/$imageTag-tomcat:v$BUILD_NUMBER"
