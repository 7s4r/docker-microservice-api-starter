#!/bin/bash

git clone https://github.com/symfony/symfony-standard.git ./
composer install
chmod -R 777 ./var/cache/* ./var/logs/*
cp ./app/config/parameters.yml.dist ./app/config/parameters.yml
/bin/bash -l -c "$*"
