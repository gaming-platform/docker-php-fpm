# docker-php-fpm

__Attention: This Docker image is specifically designed for the
[gaming platform](https://github.com/gaming-platform)
and shouldn't be used in other projects. Tags may undergo
breaking changes and could be subject to removal.__

This repository provides a `php-fpm` image for the
[gaming platform](https://github.com/gaming-platform).

## Environments

The following environments are available.

### Development

__Name__  
`ghcr.io/gaming-platform/docker-php-fpm:7.4-development`

__PHP extensions__  
Basically everything what the `php:7.4-fpm-alpine` image provides and
* intl
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
`ghcr.io/gaming-platform/docker-php-fpm:7.4-production`

__PHP extensions__  
Basically everything what the `php:7.4-fpm-alpine` image provides and
* intl
* opcache
* pdo_mysql
* redis
* sockets

__Installed packages__  
Basically everything what the `php:7.4-fpm-alpine` image provides and
* bash
