@echo off
set /P KEY="按任意键确认你已通过默认方式安装 jdk1.8.0_181："

::set /p HOME="请输入你的Java的jdk目录："

echo ***************************
echo 设置 JAVA_HOME ……
echo ***************************
setx /M JAVA_HOME "C:\Program Files\Java\jdk1.8.0_181"

echo ***************************
echo 设置 CLASSPATH ……
echo ***************************
setx /M CLASSPATH ".;%JAVA_HOME%\lib"

echo ***************************
echo 更新 Path ……
echo ***************************
setx /M Path "%JAVA_HOME%\bin;%path%"

echo ***************************
echo 配置完毕，检查配置！！
echo ***************************

java
javac

echo 请根据显示信息自行检查
set /P KEY="任意键退出："