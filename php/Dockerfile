FROM php:7.4-fpm
WORKDIR /var/www/html
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
#set memory_limit=-1
RUN echo 'memory_limit = -1' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini
#installing php-7.4 extensions and librararies neccessary for magento 2.4 using tool install-php-extensions
RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions \
    bcmath \
    ctype \
    curl \
    dom \
    fileinfo \
    gd \
    hash \
    iconv \
    intl \
    json \
    libxml \
    mbstring \
    openssl \
    pcre \
    pdo_mysql \
    simplexml \
    soap \ 
    sockets \
    sodium \
    xmlwriter \
    xsl \
    zip
#download composer for getcomposer.org
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
#make composer binary global
RUN mv composer.phar /usr/local/bin/composer
