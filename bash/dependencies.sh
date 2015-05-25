#!/usr/bin/env bash

bashFolder='/vagrant/bash'
source $bashFolder/config-constants.sh

###
# Clone configuration dependencies
###
git clone https://github.com/gabrielrtakeda/folha.vagrant.dependency $DEPENDENCY_DIRECTORY
