#! /bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
date >> /var/log/aptitude-security-updates
echo "aptitude update" >> /var/log/aptitude-security-updates
aptitude update >> /var/log/aptitude-security-updates
echo "aptitude safe-upgrade --assume-yes --target-release $(lsb_release --short --codename)-security" >> /var/log/aptitude-security-updates
DEBIAN_FRONTEND=noninteractive aptitude safe-upgrade -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" --assume-yes --target-release $(lsb_release --short --codename)-security >> /var/log/aptitude-security-updates
