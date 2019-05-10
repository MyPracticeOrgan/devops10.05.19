# Rolling updates cmd


# Initial step: 
   These steps are performed for the First time platform the customer.
          
              kubectl create secret docker-registry dockersecrete --docker-server=178.62.64.11:8086 --docker-username=CC_devops --docker-password=easel@123@@     
 First create a secret, this secret helps node to communicate with the nexus repo.
 
                    kubectl create -f kube_ob_frontend_deploy.yaml

# Rolling update:
   We provide the new Image version to the deployement group running on group of conatiners specified in the deployment file
   
          kubectl set image deployment/ccfront ccfrontend=178.62.64.11:8086/onboard_frontend:{version}     
  ccfrontend is the name of the container we gave while pulling image in the deployment file
