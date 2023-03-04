#!/usr/bin/env bash

set -e

apt-get update
apt-get upgrade --yes

apt-get install --yes --no-install-recommends \
    software-properties-common
add-apt-repository --yes ppa:ondrej/php

apt-get install --yes --no-install-recommends \
    gettext \
    nginx \
    php8.2-cli \
    php8.2-fpm \
    php8.2-apcu \
    php8.2-curl \
    php8.2-dom \
    php8.2-intl \
    php8.2-mbstring \
    php8.2-mysql \
    php8.2-sockets \
    php8.2-sqlite \
    php8.2-zip

if [ "$environment" = "development" ]
then
    apt-get install --yes --no-install-recommends \
        curl \
        inotify-tools \
        unzip \
        php8.2-xdebug

    curl \
        https://raw.githubusercontent.com/composer/getcomposer.org/d3e09029468023aa4e9dcd165e9b6f43df0a9999/web/installer \
        --output installer

    php installer --install-dir=/usr/local/bin --filename=composer --version=2.5.4
    rm installer
fi

apt-get clean
rm -rf /var/lib/apt/lists/*

ln -s /usr/sbin/php-fpm8.2 /usr/sbin/php-fpm
