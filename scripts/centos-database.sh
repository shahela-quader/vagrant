#!/bin/bash

# mysql
yum install -y mysql mysql-server mysql-devel
chkconfig  mysqld on
service mysqld start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS dev_test1"
mysql  -u root -e "SHOW DATABASES";

service mysqld reload
