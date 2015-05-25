#!/usr/bin/env bash

bashFolder='/vagrant/bash'
source $bashFolder/config-constants.sh

###
# Setup PHP v5.3.20
###
PHP_DIST='5.3.20'
PHP_INSTALLATION_TYPE='backend'
PHP_INSTALLATION_VERSION=`date +"%Y%m%d-%H%M"`
PHP_DIRECTORY="${HOME_DIRECTORY}/php-${PHP_DIST}"
PHP_SETUP_FILE='setup-php.sh'
PHP_TARFILE="php-${PHP_DIST}.tar.gz"
PHP_PREFIX_DIRECTORY="php-${PHP_DIST}-${PHP_INSTALLATION_TYPE}-${PHP_INSTALLATION_VERSION}"
wget -P $HOME_DIRECTORY http://museum.php.net/php5/$PHP_TARFILE
tar -zxvf $PHP_TARFILE
mv $DEPENDENCY_DIRECTORY/$PHP_SETUP_FILE $PHP_DIRECTORY/
(cd $PHP_DIRECTORY/; sh $PHP_SETUP_FILE $PHP_PREFIX_DIRECTORY)
make -C $PHP_DIRECTORY
make install -C $PHP_DIRECTORY
rm -rf $PHP_TARFILE $PHP_DIRECTORY
ln -s /usr/local/$PHP_PREFIX_DIRECTORY/ /usr/local/php5
