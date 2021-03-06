#!/bin/bash


# update centos with any patches
yum update -y  --exclude=kernel


# tools
yum install -y git unzip screen

# Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig  httpd on
service httpd stop

# iptable stop
service iptables stop
chkconfig iptables off

# create soft link
rm -rf  /var/www/html
ln -s /vagrant  /var/www/html
service httpd start

# php
yum install -y php php-cli php-common  php-devel  php-mysql

# mysql
yum install -y mysql mysql-server mysql-devel
chkconfig  mysqld on
service mysqld start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS dev_test1"
mysql  -u root -e "SHOW DATABASES";

# download starter content

cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/shahela-quader/vagrant/master/files/index.html
sudo -u vagrant wget -q  https://raw.githubusercontent.com/shahela-quader/vagrant/master/files/info.php 

service httpd restart


