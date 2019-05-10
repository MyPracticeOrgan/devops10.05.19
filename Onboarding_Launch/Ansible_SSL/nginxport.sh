#!/bin/bash
source ../onboarding_keycloak_fullstack/newport.txt
echo "$frontendport"
echo "$backendport"
echo "$keycloakport"
echo "$billingport"

echo "Executing ansible nginx configuration port files"

export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i ../inventory nginx_conf_deploy.yaml --extra-vars "frontend_dns=$1 backend_dns=$2 keycloak_dns=$3 billing_dns=$4 frontendport=$frontendport backendport=$backendport keycloakport=$keycloakport billingport=$billingport"
