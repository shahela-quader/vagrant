#!/bin/bash


# update centos with any patches
yum update -y  --exclude=kernel


# tools
yum install -y git unzip screen

# Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig  httpd on
service httpd stop

rm -rf  /var/www/html
ln -s /vagrant  /var/www/html
service httpd start

# php
yum install -y php php-cli php-common  php-devel  php-mysql

# mysql
yum install -y mysql mysql-server mysql-devel
chkconfig  mysqld on
service mysqld start

mysql  -u root -e "SHOW DATABASES";

# download starter content


service httpd restart


