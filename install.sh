#!/bin/bash
# Version 1.0
# Last Change:  2017-03-01
set -x

yum install -y ansible
/usr/bin/ansible-playbook -i hosts demo.yml -vvv
