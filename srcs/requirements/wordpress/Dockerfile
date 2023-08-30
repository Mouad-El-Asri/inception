FROM debian:buster

RUN apt-get update && apt-get install php php-fpm php-mysql mariadb-client curl -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/script.sh /

COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d/

RUN chmod +x script.sh

RUN mkdir /run/php

CMD ["./script.sh"]
