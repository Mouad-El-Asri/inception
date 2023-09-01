#!/bin/bash

mkdir -p /var/www/html/wordpress

cd /var/www/html/wordpress

rm -rf *

wp core download --allow-root

mv wp-config-sample.php wp-config.php

sed -i -r "s/database_name_here/$DB_NAME/1"   wp-config.php

sed -i -r "s/username_here/$DB_USER/1"  wp-config.php

sed -i -r "s/password_here/$DB_PASSWORD/1"    wp-config.php

sed -i -r "s/localhost/$DB_HOST/1"    wp-config.php

wp core install --url=${DOMAIN_NAME} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_ADMIN_USER} --admin_password=${WORDPRESS_ADMIN_PW} --admin_email=${WORDPRESS_ADMIN_EMAIL} --skip-email --allow-root

wp user create $WORDPRESS_USER $WORDPRESS_EMAIL --role=author --user_pass=$WORDPRESS_PW --allow-root

php-fpm7.4 -R -F
