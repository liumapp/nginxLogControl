#!/bin/bash
mv /usr/local/log/error.log /usr/local/log/error-$(date +"%Y%m%d").log

#cat /dev/null > /usr/local/log/error.log

mv /usr/local/log/access.log /usr/local/log/access-$(date +"%Y%m%d").log

#cat /dev/null > /usr/local/log/access.log
