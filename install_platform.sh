#!/bin/bash
# Version 1.0
# Last Change:  2018-04-15
set -x

yum install -y ansible

/usr/bin/ansible-playbook -i hosts platform.yml -vvv| tee install.log
