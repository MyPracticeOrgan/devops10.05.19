
#!/bin/bash
echo "[workers]
worker ansible_host=$1 ansible_ssh_user=root ansible_ssh_pass=$2" >> inventory

echo "[all:vars]
ansible_python_interpreter=/usr/bin/python" >> inventory
