#!/bin/bash
source ../Wordpress_fullstack/newport.txt
echo "$frontendport"

echo "Executing ansible nginx configuration port files"

export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i ../inventory nginx_conf_deploy.yaml --extra-vars "frontend_dns=$1 frontendport=$frontendport"
