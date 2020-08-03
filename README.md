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
`gamingplatform/php-fpm:7.4-development`

__PHP extensions__  
Basically everything what the `php:7.4-fpm-alpine` image provides and
* opcache
* pdo_mysql
* redis
* sockets
* xdebug
* zip

__Installed packages__  
Basically everything what the `php:7.4-fpm-alpine` image provides and
* bash
* composer with the `hirak/prestissimo` plugin
* inotify-tools
* libzip-dev
* zlib-dev

### Production

__Name__  
`gamingplatform/php-fpm:7.4-production`

__PHP extensions__  
Basically everything what the `php:7.4-fpm-alpine` image provides and
* opcache
* pdo_mysql
* redis
* sockets

__Installed packages__  
Basically everything what the `php:7.4-fpm-alpine` image provides and
* bash
