# devops

Env quick startup (only supported in CentOS7)
1. git clone https://github.com/xianke9/devops.git
2. cd devops
3. ./install.sh

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

