#!/usr/bin/env bash

# install vagrant & debian jessie 8.1 virtual machine
sudo apt-get install -y vagrant
vagrant box add debian/jessie64 https://dl.dropboxusercontent.com/u/3523744/boxes/debian-8.1-amd64-lxc-puppet/debian-8.1-lxc-puppet.box

# launch vagrant box
vagrant up
vagrant ssh

# install & run docker
sudo apt-get update
sudo apt-get install -y curl vim
curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker $USER
# docker run hello-world

# install docker-compose
sudo apt-get install python-pip
sudo pip install docker-compose

# install docker containers
docker-compose up -d
docker-compose ps
