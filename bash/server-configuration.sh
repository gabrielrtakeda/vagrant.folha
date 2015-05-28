#!/usr/bin/env bash

###
# Change DocumentRoot
###
sed -i 's/\/var\/www\/html/\/var\/www/g' /etc/httpd/conf/httpd.conf
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /srv/vm206 /var/www
fi
