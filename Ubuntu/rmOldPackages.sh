#! /bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
date >> /var/log/aptitude-security-updates
#remove old kernel files
dpkg -l linux-* | awk '/^ii/{ print $2}' | grep -v -e `uname -r | cut -f1,2 -d"-"` | grep -e [0-9] | xargs apt-get --dry-run remove
dpkg -l linux-* | awk '/^ii/{ print $2}' | grep -v -e `uname -r | cut -f1,2 -d"-"` | grep -e [0-9] | xargs aptitude -y purge
#remove old configs
dpkg -l 'linux-*' | awk '/^rc/{ print $2}' | xargs aptitude -y purge

echo "aptitude autoclean" >> /var/log/aptitude-security-updates
