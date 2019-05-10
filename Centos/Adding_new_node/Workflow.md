# For Installing The Kubernetes And Docker In New Node:
            Steps:
            1. Once the Build is Initiated by Jenkins, It will directly execute the Jenkinsfile.
            2. In Jenkinsfile there will be three stages.
                 2.1 First stage is Creating a inventory File,
                 2.2 Second stage is Kubernets and Docker Installation,
                 2.3 Third stage is Nexus Configuraion.
            3. In the first stage, it will capture the IP's and Passwords of the Master and Node droplets by executing the test.sh file.
            4. In the second stage, it will install the Kubernetes and Docker by executing the ansible scripts of the kube.yml file.
            5. In the third stage, it will configure the Nexus Repository and Docker by executing the ansible scripts of the docker.yml file.
