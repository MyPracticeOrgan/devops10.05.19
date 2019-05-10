#!/bin/bash
source /var/lib/jenkins/port/previousonboardingport.txt
echo "$port"
frontendport=$(expr "$port" + "1");
backendport=$(expr "$frontendport" + "1")
keycloakport=$(expr "$backendport" + "1")
billingport=$(expr "$keycloakport" + "1")
echo port="$billingport" > /var/lib/jenkins/port/previousonboardingport.txt

echo "$frontendport"
echo "$backendport"
echo "$keycloakport"
echo "$billingport"


echo "frontendport=$frontendport
backendport=$backendport
keycloakport=$keycloakport
billingport=$billingport" > newport.txt


echo "Executing ansible port files"
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i ../inventory template.yaml --extra-vars "frontendport=$frontendport backendport=$backendport keycloakport=$keycloakport billingport=$billingport clientname=$1"
