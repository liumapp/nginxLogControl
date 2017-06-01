#!/bin/sh
find /usr/local/log -mtime +7 -type f -name \*.log | xargs rm -f
find /usr/local/log -mtime +7 -type f -name \*.log | xargs rm -f

#find -mtime + 7 表示最近7天内没有被修改过内容的文件
#find -type f 表示普通文件