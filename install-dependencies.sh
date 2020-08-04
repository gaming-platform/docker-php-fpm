#!/usr/bin/env bash

set -e

environment="$1"

if [ -z "$environment" ]
then
    echo 'First parameter should be "development" or "production".'
    exit 1
fi

APK=()
APK+=($PHPIZE_DEPS)
APK+=('icu-dev')

PHP=()
PHP+=('intl')
PHP+=('opcache')
PHP+=('pdo_mysql')
PHP+=('sockets')

DEFER=()
DEFER+=('pecl install redis')
DEFER+=('docker-php-ext-enable redis')

if [ "$environment" = "development" ]
then
    APK+=('inotify-tools')
    APK+=('libzip-dev')
    APK+=('zlib-dev')

    PHP+=('zip')

    DEFER+=('pecl install xdebug')
    DEFER+=('docker-php-ext-enable xdebug')

    DEFER+=("
        wget
        https://raw.githubusercontent.com/composer/getcomposer.org/d3e09029468023aa4e9dcd165e9b6f43df0a9999/web/installer
        -O installer
    ")
    DEFER+=("
        php installer --install-dir=/usr/local/bin --filename=composer --version=1.8.0
    ")
    DEFER+=('rm installer')
    DEFER+=('composer global require hirak/prestissimo')
    DEFER+=('composer clearcache')
fi

apk add --no-cache "${APK[@]}"
docker-php-ext-install "${PHP[@]}"
for deferred in "${DEFER[@]}"; do
    eval $deferred
done
apk del $PHPIZE_DEPS
rm -rf /var/lib/apt/lists/*
