#!/bin/bash
echo "[nginx]
master ansible_host=$1 ansible_ssh_user=root ansible_ssh_pass=$2" >> Wordpress_Launch/Ansible_SSL/inventory

echo "[all:vars]
ansible_python_interpreter=/usr/bin/python" >> Wordpress_Launch/Ansible_SSL/inventory
