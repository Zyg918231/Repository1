@echo off

:StartStudy
::清理屏幕
cls
echo.
echo  1.关闭Bat
echo  2.for 无参
echo  3.for /L For循环
echo  4.for /F 处理文本
echo  5.for /D 遍历目录
echo  6.for /R 遍历文件
echo.
::使用choice来做选项(第一个选项errorlevel是1)
choice /c:123456 /n /m:"请选择要练习的内容："

if %errorlevel%==1 goto end 
if %errorlevel%==2 goto a
if %errorlevel%==3 goto b
if %errorlevel%==4 goto c
if %errorlevel%==5 goto d
if %errorlevel%==6 goto e

::1.关闭Bat
:end
exit

::2.for 无参
:a
for %%a in (爸爸,妈妈,哥哥,180,70) do echo %%a
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
for /f "eol=# skip=1 tokens=1,2,3,4 delims= "  %%a in (F:\学生表.txt) do ( 
 echo 姓名: %%a 年龄:%%b 身高:%%c 体重:%%d
)
pause
goto StartStudy

::5.for /D
:d
echo F盘下以"件夹"结尾的文件夹：
for /d  %%a in (F:\*件夹) do ( 
 echo %%a
)

echo. & echo.

echo Bat脚本所在路径下1--3个字母的文件夹：
for /d  %%a in (???) do (
 echo %%a
)

::6.for /R
:e
echo F盘下所有的exe程序：
rem for /r F:\ %%a in (*.exe) do ( 
rem echo %%a
rem )

echo. & echo.

echo Bat脚本所在路径下1--3个字母的exe文件：
for /r  %%a in (???.bat) do ( 
 echo %%a
)


pause
goto StartStudy