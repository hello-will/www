#!/bin/bash

sed -i 's/{DOMAIN_NAME}/'"${DOMAIN_NAME}"'/' /etc/nginx/sites-available/default
chown -R www-data.www-data /var/www/html
chown -R mysql.mysql /var/lib/mysql

service mysql start
service php7.0-fpm start
service nginx start

tail -f /var/log/nginx/error.log
