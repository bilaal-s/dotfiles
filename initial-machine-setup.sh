# before installing i3 configure autorandr to create profiles if using multiple monitors,
# then update i3 config as nessecary

#i3 config
# cp i3config ~/.config/i3/config

# Chrome
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#sudo apt-get update 
#sudo apt-get install google-chrome-stable

# Zsh
#sudo apt-get install zsh
#chsh -s $(which zsh)

# Oh my zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# mkdir ~/.oh-my-zsh/custom/plugins/git-noalias
# cp git-noalias.plugin.zsh ~/.oh-my-zsh/custom/plugins/git-noalias/git-noalias.plugin.zsh

#cp ./.zshrc ~
#source ~/.zshrc

# Curl
# sudo apt-get install curl

# Fzf
#git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
#~/.fzf/install

# Neovim
# cp .vimrc ~/
# mkdir -p ~/.config/nvim/ && cp init.vim ~/.config/nvim/
#mkdir ~/.local/share/nvim/plugged
#sudo apt-get install neovim
#curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \ 
#https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# VS Code
#curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
#sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
#sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
#sudo apt-get install apt-transport-https
#sudo apt-get update
#sudo apt-get install code
#cp ./settings.json ~/.config/Code/User/settings.json

# Tmux
#sudo apt-get install tmux

# PIP3
#sudo apt update
#sudo apt install python3-pip

# VirtualBox
#wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
#wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
#sudo apt-get update
#sudo apt-get install virtualbox

# Vagrant
#sudo apt-get install vagrant

# SSH key setup
#ssh-keygen -t rsa -b 4096 -C "bilaaldev@gmail.com"

# Git
#sudo apt install git

# Meld
#sudo apt-get update
#sudo apt-get install meld

# OpenVPN
#sudo apt-get install openvpn
#sudo openvpn --config ~/Documents/bilaal_salad.ovpn
#sudo apt install network-manager-openvpn network-manager-openvpn-gnome
#sudo nmcli connection import type openvpn file ~/Documents/bilaal_salad.ovpn

# AWS CLI
#pip3 install awscli --upgrade --user

# Terraform
#wget -P ~/Downloads https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
#unzip ~/Downloads/terraform_0.11.11_linux_amd64.zip -d ~/Downloads
#sudo mv ~/Downloads/terraform /usr/local/bin/

# Docker
#sudo apt-get update
# sudo apt-get install \
#    apt-transport-https \
#    ca-certificates \
#    curl \
#    gnupg-agent \
#    software-properties-common
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# sudo apt-get update
# sudo apt-get install docker-ce docker-ce-cli containerd.io

# Create docker sudo group and myself to it (no sudo for docker commands)
# sudo groupadd docker
# sudo usermod -aG docker $USER

# docker-compose
# sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose
# docker login
# sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
# sudo ln -s /home/bilaal/dev /development

# Ansible
# sudo apt-add-repository ppa:ansible/ansible
# sudo apt-get update
# sudo apt-get install ansible

# sudo apt-get install python-pip

# python-consul
# pip install python-consul

# sudo apt-get install silversearcher-ag

# AWS configure
#aws configure

# Move dock to bottom
#gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
