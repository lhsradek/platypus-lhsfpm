FROM php:8.0.27-fpm-alpine3.16
LABEL org.opencontainers.image.authors="radek.kadner@gmail.com"
LABEL description="https://hub.docker.com/repository/docker/lhsradek/fpm"
RUN mkdir /root/bin /root/bin/alpine
ADD --chown=44 /root/bin/readme.txt /root/bin
ADD --chown=55 /root/bin/alpine/add.sh /root/bin/alpine
ADD --chown=55 /root/bin/alpine/timezone.sh /root/bin/alpine
EXPOSE 9000
RUN apk add --no-cache ca-certificates curl autoconf bash curl icu-dev g++ gd gd-dev gcc imagemagick imagemagick-dev imagemagick-c++ libzip-dev openssl make php8-exif php-intl php8-mysqli php8-openssl php8-pecl-imagick php8-zip tar xz zip zlib-dev
RUN docker-php-ext-configure gd -with-freetype --with-jpeg --with-webp
RUN docker-php-ext-install bcmath exif gd intl mysqli zip
RUN pecl install imagick
RUN docker-php-ext-enable imagick
RUN apk del autoconf gcc g++ gd-dev icu-dev make musl-dev imagemagick-dev imagemagick-c++ libzip-dev xz-dev zlib-dev
RUN rm -f /tmp/pear/download/imagick*
ADD --chown=44 /root/bin/apm-agent-php_*.apk /root/bin/apm-agent-php_1.6.2_all.apk
RUN apk add --allow-untrusted --no-cache /root/bin/apm-agent-php_1.6.2_all.apk
RUN rm -f apm-agent-php_1.6.2_all.apk
RUN chown www-data:www-data -R /var/www/html
