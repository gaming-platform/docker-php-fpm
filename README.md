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
`ghcr.io/gaming-platform/docker-php-fpm:8.4-development`

__Packages__  
Check
[here](/install-dependencies.sh)
what is included.

__Environment variables__  
In the following table you will find an overview of the available environment variables:

| Name                                | Default         |
|-------------------------------------|-----------------|
| `PHP_FPM_LISTEN`                    | [::]:9000       |
| `PHP_FPM_PM`                        | dynamic         |
| `PHP_FPM_PM_MAX_CHILDREN`           | 5               |
| `PHP_FPM_PM_START_SERVERS`          | 2               |
| `PHP_FPM_PM_MIN_SPARE_SERVERS`      | 1               |
| `PHP_FPM_PM_MAX_SPARE_SERVERS`      | 3               |
| `PHP_FPM_PM_MAX_SPAWN_RATE`         | 32              |
| `PHP_FPM_PM_MAX_REQUESTS`           | 0               |
| `PHP_FPM_ACCESS_LOG`                | /proc/self/fd/2 |
| `PHP_HTTP_DOCUMENT_ROOT`            | /project/public |
| `PHP_HTTP_KEEPALIVE_REQUESTS`       | 10000           |
| `PHP_HTTP_LISTEN`                   | 80              |
| `PHP_HTTP_LOG_FLUSH`                | 1s              |
| `PHP_OPCACHE_JIT_BUFFER_SIZE`       | 0               |
| `PHP_OPCACHE_MAX_ACCELERATED_FILES` | 20000           |
| `PHP_OPCACHE_MEMORY_CONSUMPTION`    | 256             |
| `PHP_OPCACHE_VALIDATE_TIMESTAMPS`   | 1               |
| `PHP_REALPATH_CACHE_SIZE`           | 4096K           |
| `PHP_REALPATH_CACHE_TTL`            | 600             |
| `PHP_XDEBUG_MODE`                   | coverage        |
| `PHP_ZEND_ASSERTIONS`               | 1               |

### Production

__Name__  
`ghcr.io/gaming-platform/docker-php-fpm:8.4-production`

__Packages__  
Check
[here](/install-dependencies.sh)
what is included.

__Environment variables__  
In the following table you will find an overview of the available environment variables:

| Name                                | Default         |
|-------------------------------------|-----------------|
| `PHP_FPM_LISTEN`                    | [::]:9000       |
| `PHP_FPM_PM`                        | dynamic         |
| `PHP_FPM_PM_MAX_CHILDREN`           | 5               |
| `PHP_FPM_PM_START_SERVERS`          | 2               |
| `PHP_FPM_PM_MIN_SPARE_SERVERS`      | 1               |
| `PHP_FPM_PM_MAX_SPARE_SERVERS`      | 3               |
| `PHP_FPM_PM_MAX_SPAWN_RATE`         | 32              |
| `PHP_FPM_PM_MAX_REQUESTS`           | 0               |
| `PHP_FPM_ACCESS_LOG`                | /proc/self/fd/2 |
| `PHP_HTTP_DOCUMENT_ROOT`            | /project/public |
| `PHP_HTTP_KEEPALIVE_REQUESTS`       | 10000           |
| `PHP_HTTP_LISTEN`                   | 80              |
| `PHP_HTTP_LOG_FLUSH`                | 5s              |
| `PHP_OPCACHE_JIT_BUFFER_SIZE`       | 256M            |
| `PHP_OPCACHE_MAX_ACCELERATED_FILES` | 20000           |
| `PHP_OPCACHE_MEMORY_CONSUMPTION`    | 256             |
| `PHP_OPCACHE_VALIDATE_TIMESTAMPS`   | 0               |
| `PHP_REALPATH_CACHE_SIZE`           | 4096K           |
| `PHP_REALPATH_CACHE_TTL`            | 600             |
| `PHP_ZEND_ASSERTIONS`               | -1              |
