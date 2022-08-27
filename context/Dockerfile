FROM php:fpm-alpine
LABEL org.opencontainers.image.authors="radek.kadner@gmail.com"
LABEL description="https://hub.docker.com/repository/docker/lhsradek/fpm"
RUN mkdir /root/bin /root/bin/alpine
ADD --chown=44 /root/bin/readme.txt /root/bin
ADD --chown=55 /root/bin/alpine/add.sh /root/bin/alpine
ADD --chown=55 /root/bin/alpine/timezone.sh /root/bin/alpine
EXPOSE 9000
RUN apk add --no-cache autoconf bash g++ gd gd-dev icu-dev imagemagick imagemagick-dev imagemagick-c++ libzip-dev make openssl php8-exif php8-gd php-intl php8-mysqli php8-pecl-imagick php8-zip zip zlib-dev
RUN docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp
RUN docker-php-ext-install bcmath exif gd intl mysqli zip
RUN pecl install imagick
RUN docker-php-ext-enable imagick
RUN apk del autoconf brotli-dev bzip2-dev freetype-dev gcc g++ gd-dev icu-dev make musl-dev imagemagick-dev imagemagick-c++ libjpeg-turbo-dev libpng-dev libwebp-dev libzip-dev perl xz-dev zlib-dev zstd-dev
RUN rm -f /tmp/pear/download/imagick*
RUN chown 82:82 -R /var/www/html
