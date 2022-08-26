#!/bin/sh

echo == lhsdock add ==

apk add --update vim mc iproute2-ss iptraf-ng openssh

# apk add --no-cache bash openssl gd gd-dev icu-dev libzip-dev php8-exif php8-gd php-intl php8-mysqli php8-pdo_mysql php8-pecl-imagick php8-zip zip zlib-dev
# docker-php-ext-install exif gd intl mysqli pdo_mysql zip
# apk del gd-dev icu-dev zlib-dev libzip-dev

# chown -R www-data:www-data /var/www/html
