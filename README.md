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
`ghcr.io/gaming-platform/docker-php-fpm:7.3-development`

__PHP extensions__  
Basically everything what the `php:7.3-fpm-alpine` image provides and
* pdo_mysql
* redis
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
`ghcr.io/gaming-platform/docker-php-fpm:7.3-production`

__PHP extensions__  
Basically everything what the `php:7.3-fpm-alpine` image provides and
* pdo_mysql
* redis
* bcmath
* opcache

__Installed packages__  
Basically everything what the `php:7.3-fpm-alpine` image provides and
* bash
* coreutils (will be removed in 7.4)
