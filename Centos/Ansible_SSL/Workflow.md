# For Creating The SSL Certificate and Configuring The Nginx Files:

            Steps:
            1. Once the Build is Initiated by Jenkins, It will directly execute the Jenkinsfile.
            2. In Jenkinsfile there will be three stages.
                 2.1 First stage is Creating an inventory File,
                 2.2 Second stage is SSL Certificate Creation,
                 2.3 Third stage is Nginx configuration.
            3. In the first stage, it will capture the IP's and Passwords of the Master and Node droplets by executing the ip_capture.sh file.
            4. In the second stage, it will create the SSL certificates by executing the ansible scripts of the ssl_certs.yaml file.
            5. In the third stage, it will configure the Nginx part by executing the ansible scripts of the nginx_conf_deploy.yaml file.
            
