@echo off

:StartStudy
::������Ļ
cls
echo.
echo  1.�ر�Bat
echo  2.for �޲�
echo  3.for /L Forѭ��
echo  4.for /F �����ı�
echo  5.for /D ����Ŀ¼
echo  6.for /R �����ļ�
echo.
::ʹ��choice����ѡ��(��һ��ѡ��errorlevel��1)
choice /c:123456 /n /m:"��ѡ��Ҫ��ϰ�����ݣ�"

if %errorlevel%==1 goto end 
if %errorlevel%==2 goto a
if %errorlevel%==3 goto b
if %errorlevel%==4 goto c
if %errorlevel%==5 goto d
if %errorlevel%==6 goto e

::1.�ر�Bat
:end
exit

::2.for �޲�
:a
for %%a in (�ְ�,����,���,180,70) do echo %%a
pause
goto StartStudy

::3.for /L 
:b
for /L  %%i in (1,2,10) do ( 
 echo %%i
)
pause
goto StartStudy

::4.for /F 
:c
for /f "eol=# skip=1 tokens=1,2,3,4 delims= "  %%a in (F:\ѧ����.txt) do ( 
 echo ����: %%a ����:%%b ���:%%c ����:%%d
)
pause
goto StartStudy

::5.for /D
:d
echo F������"����"��β���ļ��У�
for /d  %%a in (F:\*����) do ( 
 echo %%a
)

echo. & echo.

echo Bat�ű�����·����1--3����ĸ���ļ��У�
for /d  %%a in (???) do (
 echo %%a
)

::6.for /R
:e
echo F�������е�exe����
rem for /r F:\ %%a in (*.exe) do ( 
rem echo %%a
rem )

echo. & echo.

echo Bat�ű�����·����1--3����ĸ��exe�ļ���
for /r  %%a in (???.bat) do ( 
 echo %%a
)


pause
goto StartStudy