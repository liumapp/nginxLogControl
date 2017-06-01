#!/bin/bash
cp /usr/local/log/error.log /usr/local/log/error-$(date +"%Y%m%d").log
#先复制原来的错误日志文件，请根据自己实际的日志路径填写
cat /dev/null >> /usr/local/log/error.log
#清空错误日志文件
cp /usr/local/log/access.log /usr/local/log/access-$(date +"%Y%m%d").log
#先复制原来的正常访问日志
cat /dev/null >> /usr/local/log/access.log
