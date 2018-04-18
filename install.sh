#!/bin/bash
# Version 1.0
# Last Change:  2018-04-15
set -x

yum install -y ansible

case  "$1" in
"-vvv")
    /usr/bin/ansible-playbook -i hosts env.yml -vvv| tee install.log
    ;;
"-skip")
    /usr/bin/ansible-playbook -i hosts env.yml
    ;;
*)
    echo -e "\033[31m "-vvv for more details or -skip for no details" \033[0m"
    exit 1
    ;;
esac

