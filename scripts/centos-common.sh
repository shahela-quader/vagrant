#!/bin/bash


# update centos with any patches
yum update -y  --exclude=kernel


# tools
yum install -y git unzip screen nc telnet

# iptable stop
service iptables stop
chkconfig iptables off
