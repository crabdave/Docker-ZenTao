#!/bin/sh 

/opt/zbox/zbox start


sleep 10s


cat /root/setting.sql | /opt/zbox/bin/mysql -u root

sleep 3s

tail -100f /opt/zbox/logs/mysql_error.log
