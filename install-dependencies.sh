#!/usr/bin/env bash

set -e

apt-get update
apt-get upgrade --yes

apt-get install --yes --no-install-recommends \
    software-properties-common
add-apt-repository --yes ppa:ondrej/php

apt-get install --yes --no-install-recommends \
    nginx \
    php8.1-cli \
    php8.1-fpm \
    php8.1-apcu \
    php8.1-curl \
    php8.1-dom \
    php8.1-intl \
    php8.1-mbstring \
    php8.1-mysql \
    php8.1-sockets \
    php8.1-zip

if [ "$environment" = "development" ]
then
    apt-get install --yes --no-install-recommends \
        curl \
        inotify-tools \
        unzip \
        php8.1-xdebug

    curl \
        https://raw.githubusercontent.com/composer/getcomposer.org/d3e09029468023aa4e9dcd165e9b6f43df0a9999/web/installer \
        --output installer

    php installer --install-dir=/usr/local/bin --filename=composer --version=2.2.4
    rm installer
fi

apt-get clean
rm -rf /var/lib/apt/lists/*

ln -s /usr/sbin/php-fpm8.1 /usr/sbin/php-fpm
