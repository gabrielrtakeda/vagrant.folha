#!/usr/bin/env bash

###
# Turning off SELinux policy.
###
setenforce 0
sed -i 's/SELINUX=\(enforcing\|permissive\)/SELINUX=disabled/g' /etc/selinux/config
