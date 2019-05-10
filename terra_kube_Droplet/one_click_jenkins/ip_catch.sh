#!/bin/bash
touch $3/inventory
echo "[master]
master ansible_host=$1 ansible_user=root ansible_private_key_file=$HOME/.ssh/id_rsa.pub" >> $3/inventory

echo "[nodes]
node ansible_host=$2 ansible_user=root ansible_private_key_file=$HOME/.ssh/id_rsa.pub" >> $3/inventory

echo "[all:vars]
ansible_python_interpreter=/usr/bin/python3" >> $3/inventory
