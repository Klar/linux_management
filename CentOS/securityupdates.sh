#! /bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
date >> /var/log/yum-security-updates
echo "yum update --security -y" >> /var/log/yum-security-updates
yum update --security -y >> /var/log/yum-security-updates