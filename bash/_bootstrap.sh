#!/usr/bin/env bash

# yum -y install httpd
# systemctl enable httpd.service

# Install MySQL
#su -c 'yum install -y mysql mysql-server'

# Install Apache
#sudo yum install httpd

# Setup Apache
#wget -P $HOME_DIRECTORY http://archive.apache.org/dist/httpd/httpd-2.2.23.tar.gz
#tar -zxvf $HOME_DIRECTORY/httpd-2.2.23.tar.gz
#cd $HOME_DIRECTORY/httpd-2.2.23
#./configure --prefix $LOCAL_DIRECTORY/apache2
#make
#su -c 'make install'

#wget -P $HOME_DIRECTORY https://olex-secure.openlogic.com/content/openlogic/apache/2.2.23/openlogic-apache-2.2.23-all-src-1.zip
#unzip $HOME_DIRECTORY/openlogic-apache-2.2.23-all-src-1.zip
#su -c 'yum groupinstall "Development tools"'
