#!/usr/bin/env bash

set -e

apt-get update
apt-get upgrade --yes

apt-get install --yes \
    software-properties-common
add-apt-repository --yes ppa:ondrej/php

apt-get install --yes --no-install-recommends \
    acl \
    gettext \
    nginx \
    php8.4-cli \
    php8.4-fpm \
    php8.4-apcu \
    php8.4-curl \
    php8.4-dom \
    php8.4-intl \
    php8.4-mbstring \
    php8.4-mysql \
    php8.4-sockets \
    php8.4-sqlite \
    php8.4-zip \
    php8.4-protobuf

if [ "$environment" = "development" ]
then
    apt-get install --yes --no-install-recommends \
        curl \
        inotify-tools \
        unzip \
        php8.4-xdebug

    curl \
        https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer \
        --output installer

    php installer --install-dir=/usr/local/bin --filename=composer --version=2.8.3
    rm installer
fi

apt-get purge --yes \
    software-properties-common
apt-get autoremove --yes
apt-get clean
rm -rf /var/lib/apt/lists/*

ln -s /usr/sbin/php-fpm8.4 /usr/sbin/php-fpm
