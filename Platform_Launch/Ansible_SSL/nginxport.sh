#!/bin/bash
source ../platform_keycloak_fullstack/newport.txt
echo "$frontendport"
echo "$backendport"
echo "$keycloakport"
echo "$elasticfrontport"
echo "$elasticbackendport"
echo "$supportport"
echo "$imagebackport"
echo "$minioport"

echo "Executing ansible nginx configuration port files"

export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i ../inventory nginx_conf_deploy.yaml --extra-vars "frontend_dns=$1 backend_dns=$2 keycloak_dns=$3 elastic_dns=$4 elasticbackend_dns=$5 support_dns=$6 image_dns=$7 minio_dns=$8 frontendport=$frontendport backendport=$backendport keycloakport=$keycloakport elasticfrontport=$elasticfrontport elasticbackendport=$elasticbackendport supportport=$supportport imagebackport=$imagebackport minioport=$minioport"
