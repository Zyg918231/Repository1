@echo off
rem ����һ��ע�ͣ��������Ի���ʾ
:: ��Ҳ��һ��ע�ͣ���������Ҳ����ʾ
echo.
echo ���ڿ�ʼBat����ѧϰ
echo.

title Bat����ѧϰ
color 0A

pause 

:StartStudy
::������Ļ
cls
echo.
echo  0.�ر�Bat
echo  1.��ǰʱ��
echo  2.������������
echo  3.�����ӳ�
echo  4.����txt�ı�
echo  5.�ļ��в���

echo.
set /p choice=��ѡ����ϰ������:

if %choice%==0 goto end
if %choice%==1 goto a
if %choice%==2 goto b
if %choice%==3 goto c
if %choice%==4 goto d
if %choice%==5 goto e

rem 0.�ر�Bat
:end
exit

rem 1.��ǰʱ��
::��ʾ��������ָ������ƫ0λ��Ȼ���ָ��ƫ�Ƶ���λ�ÿ�ʼ��ȡ8λ�ַ�
:a
echo.
echo ��ǰʱ���ǣ� %date% %time:~0,8% 
echo.
pause
goto StartStudy

rem 2.������������
::��Ҫ�޸�·��
:b 
echo.
start   /max "" "D:\���\CloudMusic\cloudmusic.exe"
echo.
pause
goto StartStudy

rem 3.�����ӳ�
:: ���ִ����ٴ�����IP
:c
set /p ip=������Ҫping��IP��
ping %ip%

if not %errorlevel% == 0 (
   echo.
   echo Ping�Է���IP���ִ���
   goto a
)
echo.
pause
goto StartStudy

rem 4.����txt�ı�
:d 
echo.
set /p txtPath=������Ҫ�������ı�·��: 
set /p txtName=������Ҫ�������ı���:
set /p txtContent=�������ı�����:
echo.
echo %txtContent% >> %txtPath%/%txtName%.txt  &&  echo �����ɹ�! || echo ����ʧ��!

echo.
pause
goto StartStudy

rem 5.�ļ��в���
::��Ҫ�޸�·��
:e 
::�����ļ���
echo.
echo ��ʼ�����ļ��� 

if not exist F:\�ҵ��ļ��� (
md  F:\�ҵ��ļ��� &&  echo F:\�ҵ��ļ��� �����ɹ�! || echo ����ʧ��!
)else (
 echo �Ѿ����� F:\�ҵ��ļ���,����Ҫ����!
)
echo.

::�ӳ�3�� �������ļ���
echo ���������������3���� �ҵ��ļ��� ����Ϊ �ҵĸ����ļ���
pause>nul
ping 127.0.0.1>nul -n 3 
ren F:\�ҵ��ļ��� �ҵĸ����ļ��� && echo �����ɹ�! || echo ����ʧ��!

::�ӳ�3�� �����ļ��� /e ����������Ŀ¼��������Ŀ¼��/y �����ļ�
echo ���������������3���� �ҵĸ����ļ��� ���Ƶ� D�� ��
pause>nul
choice /t 3 /d y /n >nul
xcopy "F:\�ҵĸ����ļ���" "D:\�ҵĸ����ļ���\" /e /y && echo D:\��������ļ��� ���Ƴɹ�! || echo ����ʧ��!

::�ӳ�3�� ɾ���ļ��� /s �Ƿ�ɾ����Ŀ¼ /q �Ƿ�ѯ��
echo ���������������3���ɾ���������ļ���
pause>nul
ping 127.0.0.1>nul -n 3
rd /s /q D:\�ҵĸ����ļ��� && rd /s /q F:\�ҵĸ����ļ���  && rd /s /q F:\�ҵ��ļ��� &&  echo ɾ���ɹ�! 

echo.
pause
goto StartStudy

