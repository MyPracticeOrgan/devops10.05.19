# Onboarding Rolling Update:

            Steps:
            1.Once the Build is Initiated by Jenkins.
            2.It will capture the IP's and Passwords of the Master and Node droplets by executing the ip_capture.sh file under the path Onboarding_rolling_update, And store the captured IP's and Passwords in the inventory file.
            3.With the help of the inventory file, it will execute the ansible_frontend.yaml file under the path Onboarding_rolling_update.
