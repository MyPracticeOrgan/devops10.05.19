#!/bin/bash
echo "[nexus]
$1 ansible_ssh_user=root ansible_ssh_pass=$2" >> Centos/Ansible_nexus/inventory

echo "[all:vars]
ansible_python_interpreter=/usr/bin/python" >> Centos/Ansible_nexus/inventory
