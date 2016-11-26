# Docker-ZenTao  /  zbox

禅道管理系统
PHP程序


使用zbox start命令启动后，容器会自动退出，所以需要一个始终运行的线程
本项目使用tail 将mysql_error.log日志打印出来 查看容器日志时实际看到的是mysql_error.log


容器共享目录/data/docker/zbox/zbox

容器创建命令：
docker run -d -e "container=container-zbox" --name container-zbox -h container-zbox -v /data/docker/zbox/zbox:/opt/zbox zbox

图片文件目录
/opt/zbox/app/zentao/www/data

数据库备份目录
/data/docker/zbox/zbox/mysql_bak

数据库备份脚本
/data/docker/zbox/zbox/backup.sh

数据库备份执行调整，需要进行容器，
docker exec -it container-zbox /bin/bash
crontab -e



