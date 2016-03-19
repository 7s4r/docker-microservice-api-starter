# docker-symfony-microservice-starter
A starter with Vagrant to virtualize a Debian Jessie OS &amp; Docker containers to create a RESTful Microservice API with Nginx, PHP-fpm, Symfony & Redis

## Requirements
[VirtualBox](https://www.virtualbox.org/), [Vagrant](https://www.vagrantup.com/), [Docker](https://www.docker.io/) and [Compose](http://docs.docker.com/compose/install/)

## Installation

```
git clone https://github.com/7s4r/docker-symfony-microservice-starter.git
cd docker-symfony-micro-service-starter
./install.sh
```

## Start
In the project root directory run the following command:
```
vagrant up
vagrant ssh
cd ~/microservice
docker-compose up -d
```

