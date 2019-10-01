# Docker
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get install docker-ce docker-ce-cli containerd.io
# Create docker sudo group and myself to it (no sudo for docker commands)
sudo groupadd docker
sudo usermod -aG docker $USER

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker login
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo ln -s /home/bilaal/dev /development

# VirtualBox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox

# Vagrant
sudo apt-get install vagrant

# OpenVPN
sudo apt-get install openvpn
sudo openvpn --config ~/Documents/bilaal_salad.ovpn
sudo apt install network-manager-openvpn network-manager-openvpn-gnome
sudo nmcli connection import type openvpn file ~/Documents/bilaal_salad.ovpn

# Terraform
wget -P ~/Downloads https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
unzip ~/Downloads/terraform_0.11.11_linux_amd64.zip -d ~/Downloads
sudo mv ~/Downloads/terraform /usr/local/bin/

# AWS CLI
pip3 install awscli --upgrade --user

# Ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

# python-consul
pip install python-consul

# AWS configure
aws configure