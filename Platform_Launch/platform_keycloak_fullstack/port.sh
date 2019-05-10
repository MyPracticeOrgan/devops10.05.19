#!/bin/bash
source /var/lib/jenkins/port/previousplatformport.txt
echo "$port"
frontendport=$(expr "$port" + "1");
backendport=$(expr "$frontendport" + "1")
keycloakport=$(expr "$backendport" + "1")
elasticfrontport=$(expr "$keycloakport" + "1")
elasticbackendport=$(expr "$elasticfrontport" + "1")
supportport=$(expr "$elasticbackendport" + "1")
imagebackport=$(expr "$supportport" + "1")
minioport=$(expr "$imagebackport" + "1")
echo port="$minioport" > /var/lib/jenkins/port/previousplatformport.txt

echo "$frontendport"
echo "$backendport"
echo "$keycloakport"
echo "$elasticfrontport"
echo "$elasticbackendport"
echo "$supportport"
echo "$imagebackport"
echo "$minioport"


echo "frontendport=$frontendport
backendport=$backendport
keycloakport=$keycloakport
elasticfrontport=$elasticfrontport
elasticbackendport=$elasticbackendport
supportport=$supportport
imagebackport=$imagebackport
minioport=$minioport" > newport.txt


echo "Executing ansible port files"
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i ../inventory template.yaml --extra-vars "frontendport=$frontendport backendport=$backendport keycloakport=$keycloakport elasticfrontport=$elasticfrontport elasticbackendport=$elasticbackendport supportport=$supportport imagebackport=$imagebackport minioport=$minioport clientname=$1"
