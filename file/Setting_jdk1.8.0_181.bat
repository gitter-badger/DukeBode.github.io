@echo off
set /P KEY="�������ȷ������ͨ��Ĭ�Ϸ�ʽ��װ jdk1.8.0_181��"

::set /p HOME="���������Java��jdkĿ¼��"

echo ***************************
echo ���� JAVA_HOME ����
echo ***************************
setx /M JAVA_HOME "C:\Program Files\Java\jdk1.8.0_181"

echo ***************************
echo ���� CLASSPATH ����
echo ***************************
setx /M CLASSPATH ".;%JAVA_HOME%\lib"

echo ***************************
echo ���� Path ����
echo ***************************
setx /M Path "%JAVA_HOME%\bin;%path%"

echo ***************************
echo ������ϣ�������ã���
echo ***************************

java
javac

echo �������ʾ��Ϣ���м��
set /P KEY="������˳���"