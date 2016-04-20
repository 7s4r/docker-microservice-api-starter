# docker-microservice-api-starter
A starter with Vagrant to virtualize CoreOS &amp; Docker containers to create a RESTful Microservice API with Nginx, Node.js, Express & MongoDB

## Requirements
[VirtualBox](https://www.virtualbox.org/), [Vagrant](https://www.vagrantup.com/)

## Map your local domain name to vagrant ip address
Add this line to your hosts file:
```
192.168.33.10 microservice.dev
```

## Start
In the project root directory run the following command:
```
vagrant up
vagrant ssh
cd ~/microservice
docker-compose up -d
```

You can now access to it at this url:
```
http://microservice.dev
```
