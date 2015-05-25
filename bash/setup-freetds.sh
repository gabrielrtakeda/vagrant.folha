#!/usr/bin/env bash

bashFolder='/vagrant/bash'
source $bashFolder/config-constants.sh

###
# Setup FreeTDS v0.82
###
FREETDS_VERSION='0.82'
FREETDS_DIRECTORY="${HOME_DIRECTORY}/freetds-${FREETDS_VERSION}"
FREETDS_TARFILE="freetds-${FREETDS_VERSION}.tar.gz"
wget -P $HOME_DIRECTORY http://mirrors.ibiblio.org/freetds/old/$FREETDS_VERSION/$FREETDS_TARFILE
tar -zxvf $HOME_DIRECTORY/$FREETDS_TARFILE
(cd $FREETDS_DIRECTORY/; ./configure --prefix=$LOCAL_DIRECTORY/freetds-$FREETDS_VERSION)
make -C $FREETDS_DIRECTORY
make install -C $FREETDS_DIRECTORY
rm -rf $FREETDS_TARFILE $FREETDS_DIRECTORY
mv -f $DEPENDENCY_DIRECTORY/freetds-$FREETDS_VERSION/etc/freetds.conf $LOCAL_DIRECTORY/freetds-$FREETDS_VERSION/etc/
