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
`gamingplatform/php-fpm:8.1-development`

__Packages__  
Check
[here](/install-dependencies.sh)
what is included.

__Environment variables__  
In the following table you will find an overview of the available environment variables:

| Name                                | Default   |
|-------------------------------------|-----------|
| `PHP_FPM_LISTEN`                    | [::]:9000 |
| `PHP_FPM_PM`                        | dynamic   |
| `PHP_FPM_PM_MAX_CHILDREN`           | 5         |
| `PHP_FPM_PM_START_SERVERS`          | 2         |
| `PHP_FPM_PM_MIN_SPARE_SERVERS`      | 1         |
| `PHP_FPM_PM_MAX_SPARE_SERVERS`      | 3         |
| `PHP_FPM_PM_MAX_SPAWN_RATE`         | 32        |
| `PHP_FPM_PM_MAX_REQUESTS`           | 0         |
| `PHP_OPCACHE_JIT_BUFFER_SIZE`       | 0         |
| `PHP_OPCACHE_MAX_ACCELERATED_FILES` | 20000     |
| `PHP_OPCACHE_MEMORY_CONSUMPTION`    | 256       |
| `PHP_OPCACHE_VALIDATE_TIMESTAMPS`   | 1         |
| `PHP_REALPATH_CACHE_SIZE`           | 4096K     |
| `PHP_REALPATH_CACHE_TTL`            | 600       |
| `PHP_XDEBUG_MODE`                   | coverage  |
| `PHP_ZEND_ASSERTIONS`               | 1         |

### Production

__Name__  
`gamingplatform/php-fpm:8.1-production`

__Packages__  
Check
[here](/install-dependencies.sh)
what is included.

__Environment variables__  
In the following table you will find an overview of the available environment variables:

| Name                                | Default   |
|-------------------------------------|-----------|
| `PHP_FPM_LISTEN`                    | [::]:9000 |
| `PHP_FPM_PM`                        | dynamic   |
| `PHP_FPM_PM_MAX_CHILDREN`           | 5         |
| `PHP_FPM_PM_START_SERVERS`          | 2         |
| `PHP_FPM_PM_MIN_SPARE_SERVERS`      | 1         |
| `PHP_FPM_PM_MAX_SPARE_SERVERS`      | 3         |
| `PHP_FPM_PM_MAX_SPAWN_RATE`         | 32        |
| `PHP_FPM_PM_MAX_REQUESTS`           | 0         |
| `PHP_OPCACHE_JIT_BUFFER_SIZE`       | 256M      |
| `PHP_OPCACHE_MAX_ACCELERATED_FILES` | 20000     |
| `PHP_OPCACHE_MEMORY_CONSUMPTION`    | 256       |
| `PHP_OPCACHE_VALIDATE_TIMESTAMPS`   | 0         |
| `PHP_REALPATH_CACHE_SIZE`           | 4096K     |
| `PHP_REALPATH_CACHE_TTL`            | 600       |
| `PHP_ZEND_ASSERTIONS`               | -1        |
