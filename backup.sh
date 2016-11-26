#!/bin/sh 
. /etc/profile
#. ~/.bash_profile
datename=$(date +%Y%m%d) 
/opt/zbox/run/mysql/mysqldump zentao > /opt/zbox/mysql_bak/$datename.sql -u root
