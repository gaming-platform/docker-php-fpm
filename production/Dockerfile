FROM php:7.3-fpm-alpine

RUN apk add --no-cache bash

COPY /install-dependencies.sh /
RUN /install-dependencies.sh production

COPY /production/php/ /usr/local/etc/php/conf.d/

COPY /bin /bin
