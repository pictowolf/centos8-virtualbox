#!/bin/bash
user=$1
password=$(openssl rand -base64 20)

sudo dnf update -y
sudo dnf install -y wget vim git 
sudo useradd $user
echo $password | sudo passwd $user --stdin
sudo usermod -aG wheel $user

echo "The IP address is: "$(ip -f inet addr show eth1 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p')
echo "The username is: $user"
echo "The generated password is: "$password