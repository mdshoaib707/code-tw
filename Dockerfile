FROM mobingi/ubuntu-apache2-php7:7.2

WORKDIR /var/lib/

RUN mkdir -p /var/lib/mediawiki

ADD mediawiki /var/lib/mediawiki/
