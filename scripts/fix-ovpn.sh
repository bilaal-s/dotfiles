#!/bin/bash

sudo mkdir -p /etc/openvpn/scripts
sudo wget https://raw.githubusercontent.com/jonathanio/update-systemd-resolved/master/update-systemd-resolved -P /etc/openvpn/scripts/
sudo chmod +x /etc/openvpn/scripts/update-systemd-resolved
