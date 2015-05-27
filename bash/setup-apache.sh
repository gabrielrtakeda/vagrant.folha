#!/usr/bin/env bash

bashFolder='/vagrant/bash'
source $bashFolder/config-constants.sh

###
# Setup Apache v2.2.23
###
APACHE_DIST='2.2.23'
APACHE_VERSION=`date +"%Y%m%d-%H%M"`
APACHE_DIRECTORY="${HOME_DIRECTORY}/httpd-${APACHE_DIST}"
APACHE_SETUP_FILE='setup-apache.sh'
APACHE_TARFILE="httpd-${APACHE_DIST}.tar.gz"
APACHE_PREFIX_DIRECTORY="apache-${APACHE_DIST}-${APACHE_VERSION}"
wget -P $HOME_DIRECTORY http://archive.apache.org/dist/httpd/$APACHE_TARFILE
tar -zxvf $HOME_DIRECTORY/$APACHE_TARFILE
mv $DEPENDENCY_DIRECTORY/$APACHE_SETUP_FILE $APACHE_DIRECTORY/
(cd $APACHE_DIRECTORY/; sh $APACHE_SETUP_FILE $APACHE_PREFIX_DIRECTORY)
make -C $APACHE_DIRECTORY
make install -C $APACHE_DIRECTORY
rm -rf $APACHE_TARFILE $APACHE_DIRECTORY
ln -s $LOCAL_DIRECTORY/$APACHE_PREFIX_DIRECTORY/ $LOCAL_DIRECTORY/apache2

echo 'setup-apache.sh: Finished!'
