FROM php:7.3-fpm-alpine

ARG environment=development

RUN apk add --no-cache bash

COPY /install-dependencies.sh /
RUN /install-dependencies.sh
