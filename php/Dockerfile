FROM php:8.1-fpm
RUN apt-get -y update && \ 
    apt-get -y install wget\
    curl git libxml2-dev libzip-dev zlib1g-dev libpng-dev
RUN apt-get -y install zip
      
RUN docker-php-ext-install pdo_mysql && \
    docker-php-ext-install mysqli && \
    docker-php-ext-install zip 
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
