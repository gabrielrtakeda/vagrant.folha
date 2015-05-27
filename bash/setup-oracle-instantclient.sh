#!/usr/bin/env bash

bashFolder='/vagrant/bash'
source $bashFolder/config-constants.sh

###
# Setup Oracle Instant Client v10.2.0.4.0
###
INSTANTCLIENT_DOWNLOADED_DIRECTORY="${HOME_DIRECTORY}/instantclient_10_2"
INSTANTCLIENT_DIRECTORY="${LOCAL_DIRECTORY}/instantclient_10_2"
INSTANTCLIENT_MODULES_LIST=( 'basic' 'devel' 'sqlplus' )
for module in "${INSTANTCLIENT_MODULES_LIST[@]}"
do
    file="oracle-instantclient-${module}-10.2.0.4-1.i386.zip"
    wget -P $HOME_DIRECTORY $YUM_FOLHA/$file
    unzip $file
    rm $file
done
mv $INSTANTCLIENT_DOWNLOADED_DIRECTORY/ $LOCAL_DIRECTORY/
ln -s $INSTANTCLIENT_DIRECTORY/libclntsh.so.10.1 $INSTANTCLIENT_DIRECTORY/libclntsh.so
ln -s $INSTANTCLIENT_DIRECTORY/libocci.so.10.1 $INSTANTCLIENT_DIRECTORY/libocci.so
sh -c "echo '' >> /etc/profile"
# sh -c "echo 'export PATH=$PATH:/usr/local/mongodb/bin/:/usr/local/php5/bin:/usr/local/graphviz-04092012-1815/bin' >> /etc/profile"
# sh -c "echo 'export ORACLE_HOME=/usr/lib/oracle/11.2/client' >> /etc/profile"
sh -c "echo 'export LD_LIBRARY_PATH=/usr/local/instantclient_10_2' >> /etc/profile"
sh -c "echo 'export TNS_ADMIN=/usr/local/instantclient_10_2' >> /etc/profile"
sh -c "echo '' >> /etc/profile"
