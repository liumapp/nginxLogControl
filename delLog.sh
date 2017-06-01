#!/bin/sh
find /usr/local/log -mtime +7 -type f -name \*.log | xargs rm -f
find /usr/local/log -mtime +7 -type f -name \*.log | xargs rm -f

