#!/bin/bash
# Version 1.0
# Last Change:  2018-4-15
set -x

yum install -y ansible
/usr/bin/ansible-playbook -i hosts demo.yml -vvv| tee install.log
