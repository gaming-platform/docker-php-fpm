FROM php:7.4-fpm-alpine

RUN apk add --no-cache bash

COPY /install-dependencies.sh /
RUN /install-dependencies.sh development

COPY /bin /bin
