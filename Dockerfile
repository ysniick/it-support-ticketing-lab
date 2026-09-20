FROM php:8.4-apache

RUN apt-get update && apt-get install -y \
    unzip \
    curl \
    libicu-dev \
    libzip-dev \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install mysqli intl zip gd \
    && rm -rf /var/lib/apt/lists/*

RUN a2enmod rewrite

WORKDIR /var/www/html

RUN curl -L \
    https://github.com/osTicket/osTicket/releases/download/v1.18.4/osTicket-v1.18.4.zip \
    -o /tmp/osticket.zip \
    && unzip /tmp/osticket.zip -d /tmp/osticket \
    && rm -rf /var/www/html/* \
    && cp -r /tmp/osticket/upload/. /var/www/html/ \
    && cp include/ost-sampleconfig.php include/ost-config.php \
    && chown -R www-data:www-data /var/www/html \
    && chmod 0666 include/ost-config.php \
    && rm -rf /tmp/osticket /tmp/osticket.zip

RUN rm -rf /var/www/html/setup

EXPOSE 80
