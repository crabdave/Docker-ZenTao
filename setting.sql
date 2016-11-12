use mysql;

grant all on *.* to root@"%" identified by "123456"; 

update user set password=PASSWORD("123456") where user='root';
