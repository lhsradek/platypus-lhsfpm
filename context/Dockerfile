FROM php:fpm-alpine
LABEL org.opencontainers.image.authors="radek.kadner@gmail.com"
LABEL description="https://hub.docker.com/repository/docker/lhsradek/fpm"
RUN mkdir /root/bin /root/bin/alpine
ADD --chown=44 /root/bin/readme.txt /root/bin
ADD --chown=55 /root/bin/alpine/add.sh /root/bin/alpine
ADD --chown=55 /root/bin/alpine/timezone.sh /root/bin/alpine
EXPOSE 9000
RUN apk add --no-cache ca-certificates autoconf bash curl icu-dev g++ gcc imagemagick imagemagick-dev imagemagick-c++ libzip-dev make openssl php8-exif php-intl php8-mysqli php8-pecl-imagick php8-zip tar xz zip zlib-dev
RUN set -eux
ENV PHP_INI_DIR=/usr/local/etc/php
RUN docker-php-ext-install bcmath exif intl mysqli zip
RUN pecl install imagick
RUN docker-php-ext-enable sodium
RUN docker-php-ext-enable imagick
RUN apk del autoconf bzip2-dev gcc g++ icu-dev make musl-dev imagemagick-dev imagemagick-c++ libzip-dev perl xz-dev zlib-dev zstd-dev
RUN rm -f /tmp/pear/download/imagick*
RUN chown www-data:www-data -R /var/www/html
