
# Pull base image  
FROM ubuntu:latest
  
MAINTAINER crabdave "calorie.david@gmail.com"  

# Usage: USER [UID]
USER root


# add zbox dir
ADD  ZenTaoPMS.7.3.stable.zbox_64.tar.gz /opt
ADD setting.sql /root
ADD start.sh /root

RUN chmod 755 /root/start.sh
RUN chmod 755 /root/setting.sql

# unblind mysql ipaddress
RUN sed -i '/bind-address/d' /opt/zbox/etc/mysql/my.cnf

# start  
ENTRYPOINT ["/root/start.sh"]

