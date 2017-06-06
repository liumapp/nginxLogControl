# nginxLogControl

> Control your nginx error log and access log limited in 7 days or any day you like.

[document](http://www.liumapp.com/articles/2017/06/01/1496286037699.html)

## how to use 

* put clearLog.sh and delLog.sh in your server anywhere you like . (maybe the nginx log folder shall be great)

* chmod -R 777 clearLog.sh delLog.sh. 

* crontab -e (make sure your server started crontab,or you can just enter line like "/sbin/service/crond start")

* add following code:

	```
		55 23 * * * /usr/local/nginx/logs/clearLog.sh
		59 23 * * * /usr/local/nginx/logs/delLog.sh
	```

* of course you need change the path , while your nginx log folder located in different location.

* nginx -s reload (reload your nginx at the beginning)

## QA

### 为什么最后重启nginx？

nginx在运行状态下，access.log和error.log两个文件的资源句柄并没有被释放，此时脚本是无法做到彻底删除这两个文件的，只有通过nginx重启，手动的释放资源句柄后才可。
