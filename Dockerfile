FROM php:8.1-fpm
RUN apt-get -y update && \ 
    apt-get -y install wget\
    curl git libxml2-dev libzip-dev zlib1g-dev libpng-dev      
RUN docker-php-ext-configure gd --enable-gd && \
    docker-php-ext-install pdo_mysql && \
    docker-php-ext-install mysqli && \
    docker-php-ext-install zip
RUN curl -sS https://getcomposer.org/installer | php -- \
 --install-dir=/usr/local/bin --filename=composer --quiet
WORKDIR /var/wwww
