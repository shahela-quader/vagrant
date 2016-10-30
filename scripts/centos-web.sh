#!/bin/bash

# Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig  httpd on
service httpd stop


# create soft link
rm -rf  /var/www/html
ln -s /vagrant  /var/www/html
service httpd start

# php
yum install -y php php-cli php-common  php-devel  php-mysql
service httpd restart

