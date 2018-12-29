FROM mobingi/ubuntu-apache2-php7:7.2

RUN mkdir -p /var/lib/mediawiki

WORKDIR /var/lib/mediawiki

ADD mediawiki /var/lib/mediawiki/

RUN ln -s /var/lib/mediawiki /var/www/html/mediawiki

EXPOSE 80

CMD ["apache2ctl","-D","FOREGROUND"]
