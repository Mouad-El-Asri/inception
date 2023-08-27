#!/bin/bash

mkdir -p /var/www/html/wordpress

cd /var/www/html/wordpress

rm -rf *

wp core download --allow-root

#mv wp-config-sample.php wp-config.php

wp core config --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${DB_HOST} --allow-root

wp core install --url=${DOMAIN_NAME} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_ADMIN_USER} --admin_password=${WORDPRESS_ADMIN_PW} --admin_email=${WORDPRESS_ADMIN_EMAIL} --skip-email --allow-root

wp user create $WORDPRESS_USER $WORDPRESS_EMAIL --role=author --user_pass=$WORDPRESS_PWD --allow-root

php-fpm -F -R

#exec $@
