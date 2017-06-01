# nginxLogControl

> Control your nginx error log and access log limited in 7 days or any day you like.

[homePage](http://www.liumapp.com)

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

