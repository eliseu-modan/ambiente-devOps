#!/bin/bash
sudo yum -y install epel-release
echo "Início da instalação do Ansible"
sudo yum -y install ansible

# Adicionando entradas ao /etc/hosts
cat <<EOT | sudo tee -a /etc/hosts
192.168.1.2 control
192.168.1.3 app
192.168.1.4 database
EOT