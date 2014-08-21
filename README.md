软件配置步骤：

1、安装jdk并配置环境变量；
2、安装Mysql数据库服务器，并用户为：root  密码：3.14 ，或者配置密码为空；
3、用Mysql导入数据库创建脚本db_etrademini.sql并执行；
4、将apache-tomcat-6.0.39文件夹拷至本地磁盘并设定环境变量；
     环境变量设置：
     （1）新建变量名：TOMCAT_HOME
              变量值：tomcat工作目录  比如   F:\apache-tomcat-5.5.27
     （2）在  CLASSPATH变量里添加变量值    %TOMCAT_HOME%\common\lib\servlet-api.jar;
5、将web应用压缩包拷至 ..\apache-tomcat-6.0.39\webapps目录；
6、启动mysql服务器，然后进入 ..\apache-tomcat-6.0.39\bin目录，双击startup.bat启动tomcat服务器；
7、在浏览器里输入地址 http://127.0.0.1:8080/etrademini即可运行工程。
 