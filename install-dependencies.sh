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
    php8.5-cli \
    php8.5-fpm \
    php8.5-apcu \
    php8.5-curl \
    php8.5-dom \
    php8.5-intl \
    php8.5-mbstring \
    php8.5-mysql \
    php8.5-sockets \
    php8.5-sqlite \
    php8.5-zip \
    php8.5-protobuf

if [ "$environment" = "development" ]
then
    apt-get install --yes --no-install-recommends \
        curl \
        inotify-tools \
        unzip \
        php8.5-xdebug

    curl \
        https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer \
        --output installer

    php installer --install-dir=/usr/local/bin --filename=composer --version=2.9.2
    rm installer
fi

apt-get purge --yes \
    software-properties-common
apt-get autoremove --yes
apt-get clean
rm -rf /var/lib/apt/lists/*

ln -s /usr/sbin/php-fpm8.5 /usr/sbin/php-fpm
