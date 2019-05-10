# New WordPress Launch:

            Steps:
            1. Once the Build is Initiated by Jenkins, It will directly execute the Jenkinsfile.
            2. In Jenkinsfile there will be six stages.
                 2.1 First stage is Creating an inventory File,
                 2.2 Second stage is App temp files configuration,
                 2.3 Third stage is Nginx configuration,
                 2.4 Fourth stage is Application Deployment,
                 2.5 Fifth stage is Getting the port number.              
            3. In the first stage, it will capture the IP's and Passwords of the Master and Node droplets by executing the test.sh file under the path Wordpress_Launch.  And store the captured IP's and Passwords in the inventory file.
            4. In the second stage, It will execute the port.sh file under the path Wordpress_Launch/Wordpress_fullstack.
            5. In the third stage, It will execute the nginxport.sh file under the path Wordpress_Launch/Ansible_SSL.
            6. In the fourth stage, With the help of the inventory file, it will execute the App_stack_ansible.yaml file under the path Wordpress_Launch/Wordpress_fullstack.
            7. In the fifth stage, It will execute the multiple API calls.
            8. In the sixth stage, It will capture the port number from the newport.txt file under the path Wordpress_Launch/Wordpress_fullstack. And sent the WordPress login credentials to the customers.
