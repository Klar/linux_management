#! /bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
date >> /var/log/yum-security-updates
#remove old kernel files, only keep 2 kernels
package-cleanup --oldkernels --count=2 -y
yum clean all