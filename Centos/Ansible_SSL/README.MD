# Note
Kindly Disable the Selinux if on Centos

To check if SELinux is enable,

           $getenforce
             o/p: enforcing
To disable SELinux,

            $setenforce 0
            
# cmd
ansible-playbook -i inventory nginx_conf_deploy.yaml --extra-vars 'frontend_dns=optit.cccsuk.co.uk backend_dns=optit-test.cccsuk.co.uk keycloak_dns=optitkl.cccsuk.co.uk'
            

