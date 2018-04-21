#!/bin/bash
# Version 1.0
# Last Change:  2018-04-15
set -x

yum install -y ansible

if $1 -eq "-vvv"
then
    /usr/bin/ansible-playbook -i hosts platform.yml
else
    /usr/bin/ansible-playbook -i hosts platform.yml -vvv| tee install.log
fi
