# micro-service-starter
A starter with vagrant to virtualize a Debian Jessie OS &amp; docker containers to create a microservice

## Requirements
[VirtualBox](https://www.virtualbox.org/), [Vagrant](https://www.vagrantup.com/), [Docker](https://www.docker.io/) and [Compose](http://docs.docker.com/compose/install/)

## Installation

```
git clone https://github.com/7s4r/micro-service-starter.git
cd micro-service-starter
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

