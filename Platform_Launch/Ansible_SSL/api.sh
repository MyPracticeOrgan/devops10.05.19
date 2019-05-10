#!/bin/bash

subdomainName=$subdomainName
onboardingbackenduri=$onboardingbackenduri
platfrombackenduri=$platfrombackenduri  #http://platform_backendURI  ( jenkins parameter)
userName=$userName  #( jenkins parameter)
email=$email #jenkins parameter
kUserID=$kUserID
domainame=.cccseu.com
response=$(curl -s -X POST \
  $platfrombackenduri/users/migrateData \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -d "userName=$userName&email=$email&kUserID=$kUserID")
  
echo "$response"

status=$(echo $response | jq '.status')
platformKey=$(echo $response | jq -r '.data.PlatformKUserID')

echo " status obtained is $status"

if [ "$status" == "201" ];
then
	status=1
	curl -s -X POST \
   $onboardingbackenduri/updateJenkinsStatus \
   -H 'cache-control: no-cache' \
   -H 'content-type: application/x-www-form-urlencoded' \
   -d "PlatformKUserID=$platformKey&domainURI=$subdomainName&status=$status&kUserID=$kUserID"
else
	echo "status is not 201"
	status=0
	curl -s -X POST \
   $onboardingbackenduri/updateJenkinsStatus \
   -H 'cache-control: no-cache' \
   -H 'content-type: application/x-www-form-urlencoded' \
   -d "PlatformKUserID=$platformKey&domainURI=$subdomainName&status=$status&kUserID=$kUserID"
fi

echo " status obtained is $status"
echo "Platform Key obtained is  $platformKey"
