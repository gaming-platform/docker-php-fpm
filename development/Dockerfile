FROM php:7.3-fpm-alpine

RUN apk add --no-cache bash

COPY /install-dependencies.sh /
RUN /install-dependencies.sh development
