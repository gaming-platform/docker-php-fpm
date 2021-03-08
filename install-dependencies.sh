#!/usr/bin/env bash

set -e

apt-get update
apt-get upgrade --yes

apt-get install --yes --no-install-recommends \
    software-properties-common
add-apt-repository ppa:ondrej/php

apt-get install --yes --no-install-recommends \
    php8.0-cli \
    php8.0-fpm \
    php8.0-curl \
    php8.0-dom \
    php8.0-intl \
    php8.0-mbstring \
    php8.0-mysql \
    php8.0-sockets \
    php8.0-zip

if [ "$environment" = "development" ]
then
    apt-get install --yes --no-install-recommends \
        curl \
        inotify-tools \
        unzip \
        php8.0-xdebug

    curl \
        https://raw.githubusercontent.com/composer/getcomposer.org/d3e09029468023aa4e9dcd165e9b6f43df0a9999/web/installer \
        --output installer

    php installer --install-dir=/usr/local/bin --filename=composer --version=2.0.11
    rm installer
fi

apt-get clean
rm -rf /var/lib/apt/lists/*

ln -s /usr/sbin/php-fpm8.0 /usr/sbin/php-fpm
