#!/usr/bin/env bash

# install vagrant & debian jessie 8.1 virtual machine
sudo apt-get install -y vagrant
vagrant box add debian/jessie64 https://dl.dropboxusercontent.com/u/3523744/boxes/debian-8.1-amd64-lxc-puppet/debian-8.1-lxc-puppet.box

# install & run docker
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-get install -y apparmor
sudo apt-get install -y docker-engine
sudo usermod -aG docker $USER
# docker run hello-world

# install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# launch vagrant box
vagrant up

# install docker containers
docker-compose up -d
docker-compose ps
