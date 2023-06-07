FROM ubuntu:20.04

ARG environment=development
ARG php_opcache_jit_buffer_size=0
ARG php_opcache_validate_timestamps=1
ARG php_zend_assertions=1
ARG php_http_log_flush=1s

ENV PHP_FPM_LISTEN=[::]:9000 \
    PHP_FPM_PM=dynamic \
    PHP_FPM_PM_MAX_CHILDREN=5 \
    PHP_FPM_PM_START_SERVERS=2 \
    PHP_FPM_PM_MIN_SPARE_SERVERS=1 \
    PHP_FPM_PM_MAX_SPARE_SERVERS=3 \
    PHP_FPM_PM_MAX_SPAWN_RATE=32 \
    PHP_FPM_PM_MAX_REQUESTS=0 \
    PHP_FPM_ACCESS_LOG=/proc/self/fd/2 \
    PHP_HTTP_DOCUMENT_ROOT=/project/web \
    PHP_HTTP_KEEPALIVE_REQUESTS=10000 \
    PHP_HTTP_LISTEN=80 \
    PHP_HTTP_LOG_FLUSH=$php_http_log_flush \
    PHP_OPCACHE_JIT_BUFFER_SIZE=$php_opcache_jit_buffer_size \
    PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 \
    PHP_OPCACHE_MEMORY_CONSUMPTION=256 \
    PHP_OPCACHE_VALIDATE_TIMESTAMPS=$php_opcache_validate_timestamps \
    PHP_REALPATH_CACHE_SIZE=4096K \
    PHP_REALPATH_CACHE_TTL=600 \
    PHP_XDEBUG_MODE=coverage \
    PHP_ZEND_ASSERTIONS=$php_zend_assertions

COPY /install-dependencies.sh /
RUN /install-dependencies.sh

COPY /config/php /etc/php/8.2/
COPY /config/nginx /etc/nginx/

COPY /bin /bin
