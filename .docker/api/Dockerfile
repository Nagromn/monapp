FROM php:8.3.6-apache-bookworm

WORKDIR /var/www/html/

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    git curl unzip zip libzip-dev libpng-dev zlib1g-dev libicu-dev g++ \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl pdo_mysql opcache

RUN a2enmod rewrite

RUN docker-php-ext-install opcache

ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN install-php-extensions ast ssh2 gd zip pdo pdo_mysql

RUN install-php-extensions @composer

RUN groupadd dev -g 999
RUN useradd dev -g dev -d /home/dev -m

RUN rm -rf /var/lib/apt/lists/*

CMD ["apachectl", "-D", "FOREGROUND"]

EXPOSE 80
