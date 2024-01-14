#!/usr/bin/env bash

set -e

apt-get update
apt-get upgrade --yes

apt-get install --yes \
    software-properties-common
add-apt-repository --yes ppa:ondrej/php

apt-get install --yes --no-install-recommends \
    gettext \
    nginx \
    php8.3-cli \
    php8.3-fpm \
    php8.3-apcu \
    php8.3-curl \
    php8.3-dom \
    php8.3-intl \
    php8.3-mbstring \
    php8.3-mysql \
    php8.3-sockets \
    php8.3-sqlite \
    php8.3-zip \
    php8.3-protobuf

if [ "$environment" = "development" ]
then
    apt-get install --yes --no-install-recommends \
        curl \
        inotify-tools \
        unzip \
        php8.3-xdebug

    curl \
        https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer \
        --output installer

    php installer --install-dir=/usr/local/bin --filename=composer --version=2.6.5
    rm installer
fi

apt-get purge --yes \
    software-properties-common
apt-get autoremove --yes
apt-get clean
rm -rf /var/lib/apt/lists/*

ln -s /usr/sbin/php-fpm8.3 /usr/sbin/php-fpm
