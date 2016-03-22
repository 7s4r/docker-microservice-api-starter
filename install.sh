#!/usr/bin/env bash

# install vagrant & debian jessie 8.1 virtual machine
sudo apt-get install -y vagrant
vagrant box add debian/jessie64 https://dl.dropboxusercontent.com/u/3523744/boxes/debian-8.1-amd64-lxc-puppet/debian-8.1-lxc-puppet.box

# add microservice url to host
sudo echo "192.168.33.10 microservice.dev" >> /etc/hosts

# launch Vagrant box
vagrant up
vagrant ssh

# install & run Docker
sudo apt-get update
sudo apt-get install -y curl

# get the latest Docker package
curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker $USER

# verify if Docker is installed correctly
# docker run hello-world

# install Docker-compose
sudo apt-get install -y python-pip
sudo pip install docker-compose

# install Docker-machine
sudo -i
curl -L https://github.com/docker/machine/releases/download/v0.6.0/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine
chmod +x /usr/local/bin/docker-machine
exit

# install Docker containers
cd ~/microservice
docker-compose up -d
docker-compose ps
