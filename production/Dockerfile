FROM php:7.3-fpm-alpine3.9

RUN apk add --no-cache bash

COPY /install-dependencies.sh /
RUN /install-dependencies.sh production

COPY /production/php/custom.ini /usr/local/etc/php/conf.d/zzz_custom.ini
