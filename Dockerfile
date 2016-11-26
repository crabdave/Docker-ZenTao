

# Pull base image  
FROM centos:latest
  
MAINTAINER crabdave "calorie.david@gmail.com"  

# Usage: USER [UID]
USER root
# modify timezone
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#install cronie
RUN yum -y install cronie
#install crontabs
RUN yum -y install crontabs

RUN sed -i '/session    required   pam_loginuid.so/c\#session    required   pam_loginuid.so' /etc/pam.d/crond
# crontab test
RUN echo "*/1 * * * * /bin/echo 'it works!' >> /root/test.log" >> /var/spool/cron/root

#start  
ENTRYPOINT ["/usr/sbin/init"]



