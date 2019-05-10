#!/bin/bash
echo "[masters]
master ansible_host=$1 ansible_ssh_user=root ansible_ssh_pass=$2" >> Centos/Monitoring/inventory

echo "[all:vars]
ansible_python_interpreter=/usr/bin/python" >> Onboarding_Launch/inventory
