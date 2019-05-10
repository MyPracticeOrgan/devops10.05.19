#!/bin/bash
source /var/lib/jenkins/port/previouswordpressport.txt
echo "$port"
frontendport=$(expr "$port" + "1");
echo port="$frontendport" > /var/lib/jenkins/port/previouswordpressport.txt

echo "$frontendport"

echo "frontendport=$frontendport" > newport.txt


echo "Executing ansible port files"
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i ../inventory templet.yaml --extra-vars "frontendport=$frontendport clientname=$1"
