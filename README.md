# SQL-Server
SQL Server安装调试

无法启动T-SQL 调试
 
一、无法启动T-SQL调试。未能连接到计算机
问题详情



解决办法

1.要在服务器本机，不要远程

2.用实例名，不要用.或者local

3.以Windows身份验证的administrator或者sqlserver身份验证的sa登录



 二、关于使用syadmin固定服务器角色成员的登录名
 



因为我这个数据库从服务器拷贝下来还原，所以我发现sa对这个数据库并没有权限



赋予这个数据库sa权限，报错：

sqlserver 2008 无法使用特殊主体‘sa’，错误15405

 1、更改文件所有者

 

 

 2、重新这个数据库sa的权限

                             

 

