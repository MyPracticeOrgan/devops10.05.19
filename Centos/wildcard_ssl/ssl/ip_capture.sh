
#!/bin/bash
echo "[workers]
worker ansible_host=$1 ansible_ssh_user=root ansible_ssh_pass=$2" >> Centos/wildcard_ssl/ssl/inventory

echo "[all:vars]
ansible_python_interpreter=/usr/bin/python" >> Centos/wildcard_ssl/ssl/inventory
