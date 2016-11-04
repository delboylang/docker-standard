FROM php:5.6-apache

RUN    apt-get update \
&& apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev libtidy-dev zziplib-bin msmtp \
&& a2enmod rewrite \
&& a2enmod ssl \
&& docker-php-ext-install mysqli pdo_mysql iconv mcrypt zip \
&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
&& docker-php-ext-install gd tidy 

ADD docker/vhost.conf /etc/apache2/sites-enabled/000-default.conf
ADD docker/php.ini /usr/local/etc/php/php.ini
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd tidy

RUN a2enmod rewrite

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/bin/composer 
RUN composer global require "laravel/installer" 
RUN echo  "export PATH=$PATH:$HOME/bin:$HOME/.composer/vendor/bin" >> /root/.bashrc
WORKDIR /var/www/silverstripe