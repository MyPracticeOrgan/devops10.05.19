# Installing The Jenkins:

            Steps:
            1. Once the Build is Initiated by Jenkins, It will directly execute the Jenkinsfile.
            2. In Jenkinsfile there will be two stages.
                 2.1 First stage is Creating an inventory File,
                 2.2 Second stage is Jenkins Installation,
            3. In the first stage, it will capture the IP's and Passwords of the Master and Node droplets by executing the test.sh file. And store the captured IP's and Passwords in the inventory file.
            4. In the second stage, with the inventory file, it will install the Jenkins by executing the ansible scripts of the jenkins.yaml file.
            
            
