#!/usr/bin/env bash

bashFolder='/vagrant/bash'
source $bashFolder/config-constants.sh

###
# Set YUM repository configurations by GrupoFolha
###
YUM_REPOS_DIRECTORY='/etc/yum.repos.d'
mv $YUM_REPOS_DIRECTORY/CentOS-Base.repo $YUM_REPOS_DIRECTORY/CentOS-Base.repo.rpmnew
mv $DEPENDENCY_DIRECTORY/yum.repos.d/* $YUM_REPOS_DIRECTORY
yum update -y
