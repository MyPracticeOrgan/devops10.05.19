resource "digitalocean_droplet" "master" {
    image = "centos-7-x64"
    name = "Kube-master"
    region = "blr1"
    size = "s-2vcpu-4gb"
    private_networking = true
    ssh_keys = [
      "${var.ssh_fingerprint}"
    ]
}
resource "digitalocean_droplet" "node" {
    image = "centos-7-x64"
    name = "Kube-node"
    region = "blr1"
    size = "s-2vcpu-4gb"
    private_networking = true
    ssh_keys = [
      "${var.ssh_fingerprint}"
    ]

}


# connection {
#      user = "root"
#      type = "ssh"
#      private_key = "${file(var.pvt_key)}"
#      timeout = "2m"
#  }

# provisioner "remote-exec" {
#    inline = [
#      "export PATH=$PATH:/usr/bin",
      # install updgrade
#      "sudo apt-get update || exit 1",
#       "sleep 5",
      #install python   
#      "sudo apt-get install -y python"
       # install tomcat
#      # "sudo apt-get update",
#      # "sudo apt-get -y install apache2"
#   ]
#  }

output "master_ip_address" {
  value = "${digitalocean_droplet.master.ipv4_address}"
}

output "node_ip_address" {
  value = "${digitalocean_droplet.node.ipv4_address}"
}
