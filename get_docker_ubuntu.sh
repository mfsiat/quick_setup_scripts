#! /usr/bin/bash
sudo apt update -y && sudo apt upgrade -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
#######################"Installing Docker & compose"###########################
#######################"Installing Docker & compose"###########################
#######################"Installing Docker & compose"###########################
#######################"Installing Docker & compose"###########################
#######################"Installing Docker & compose"###########################
#######################"Installing Docker & compose"###########################
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
rm -rf get-docker.sh
sudo usermod -aG docker ubuntu
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose