FROM php:8.1-cli

MAINTAINER Jack Skinner

RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip install -U pip --break-system-packages
RUN pip install pywatch --break-system-packages
RUN curl -sS https://getcomposer.org/installer | php \
  && chmod +x composer.phar && mv composer.phar /usr/local/bin/composer
RUN apt-get install -y git unzip

WORKDIR /opt

# ENTRYPOINT ["sh"]


