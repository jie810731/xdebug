FROM php:7.4-apache

# Install Xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
RUN echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini;
RUN echo "xdebug.mode = debug" >> /usr/local/etc/php/conf.d/xdebug.ini;
RUN echo "xdebug.start_with_request = yes" >> /usr/local/etc/php/conf.d/xdebug.ini;
RUN echo "xdebug.client_host=host.docker.internal" >> /usr/local/etc/php/conf.d/xdebug.ini;
