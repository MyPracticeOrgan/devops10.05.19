#!/bin/bash
echo "[jenkins]
$1 ansible_ssh_user=root ansible_ssh_pass=$2" >> Centos/dashboard/inventory

echo "[all:vars]
ansible_python_interpreter=/usr/bin/python" >> Centos/dashboard/inventory
