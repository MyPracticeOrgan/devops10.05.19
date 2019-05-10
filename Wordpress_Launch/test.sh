#!/bin/bash
echo "[masters]
master ansible_host=$1 ansible_ssh_user=root ansible_ssh_pass=$2" >> Wordpress_Launch/inventory

echo "[workers]
worker ansible_host=$3 ansible_ssh_user=root ansible_ssh_pass=$4" >> Wordpress_Launch/inventory

echo "[all:vars]
ansible_python_interpreter=/usr/bin/python" >> Wordpress_Launch/inventory
