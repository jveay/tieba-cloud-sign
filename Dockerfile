FROM arm64v8/php:7.2-apache
COPY Tieba-Cloud-Sign/ /var/www/html/

RUN apt-get update && \
    apt-get install -y \
    zlib1g-dev \
    vim && \
    docker-php-ext-install mysqli zip \
    && docker-php-ext-enable mysqli zip
