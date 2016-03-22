FROM debian:jessie

RUN apt-get update && apt-get install -y git curl php5-cli php5-json php5-intl php5-curl

RUN curl -sS https://getcomposer.org/installer | php \
  && mv composer.phar /usr/local/bin/composer

# install & configure symfony
RUN git clone https://github.com/symfony/symfony.git /var/www \
  && cd /var/www && composer install

# ADD entrypoint.sh /entrypoint.sh

WORKDIR /var/www

# ENTRYPOINT ["/entrypoint.sh"]
