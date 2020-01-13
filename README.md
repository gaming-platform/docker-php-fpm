# docker-php-fpm

__Please don't use these docker images on your projects.
Tags will have breaking changes and are likely to drop.
They are built exclusively for this platform.__

This repository provides base `php-fpm` images for the
[gaming platform](https://github.com/gaming-platform).

## Environments

The following environments are available.

### Development

__Name__  
`gamingplatform/php-fpm:7.3-development`

__PHP extensions__  
Basically everything what the `php:7.3-fpm-alpine` image provides and
* pdo_mysql
* bcmath
* zip
* xdebug

__Installed packages__  
Basically everything what the `php:7.3-fpm-alpine` image provides and
* bash
* coreutils (will be removed in 7.4)
* zlib-dev
* libzip-dev
* inotify-tools
* composer with the `hirak/prestissimo` plugin

### Production

__Name__  
`gamingplatform/php-fpm:7.3-production`

__PHP extensions__  
Basically everything what the `php:7.3-fpm-alpine` image provides and
* pdo_mysql
* bcmath
* opcache

__Installed packages__  
Basically everything what the `php:7.3-fpm-alpine` image provides and
* bash
* coreutils (will be removed in 7.4)
