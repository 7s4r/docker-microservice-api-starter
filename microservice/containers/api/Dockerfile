FROM debian:jessie

RUN apt-get update && apt-get install -y curl php5-cli php5-json php5-intl php5-curl

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

ADD packages.json ~/packages.json

RUN composer create-project /var/www 

# ADD entrypoint.sh /entrypoint.sh

WORKDIR /var/www

# ENTRYPOINT ["/entrypoint.sh"]
