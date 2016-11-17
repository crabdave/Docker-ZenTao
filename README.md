# Docker-ZenTao  /  zbox

禅道管理系统
PHP程序

本项目将mysql开放到容器外部，便于迁移和备份mysql数据，账号：root 密码：123456

使用zbox start命令启动后，容器会自动退出，所以需要一个始终运行的线程
本项目使用tail 将mysql_error.log日志打印出来 查看容器日志时实际看到的是mysql_error.log

docker run -d -e "container=container-zbox" --name container-zbox -h container-zbox zbox
