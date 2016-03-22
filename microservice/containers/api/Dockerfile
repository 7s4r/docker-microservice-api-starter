FROM debian:jessie

RUN apt-get update && apt-get install -y curl php5-cli php5-json php5-intl php5-curl

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN composer create-project api-platform/api-platform /var/www

# ADD entrypoint.sh /entrypoint.sh

WORKDIR /var/www

# ENTRYPOINT ["/entrypoint.sh"]
