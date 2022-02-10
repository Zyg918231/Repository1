@echo off
rem 这是一行注释，开启回显会显示
:: 这也是一行注释，开启回显也不显示
echo.
echo 现在开始Bat基础学习
echo.

title Bat基础学习
color 0A

pause 

:StartStudy
::清理屏幕
cls
echo.
echo  0.关闭Bat
echo  1.当前时间
echo  2.打开网易云音乐
echo  3.测试延迟
echo  4.创建txt文本
echo  5.文件夹操作

echo.
set /p choice=请选择练习的内容:

if %choice%==0 goto end
if %choice%==1 goto a
if %choice%==2 goto b
if %choice%==3 goto c
if %choice%==4 goto d
if %choice%==5 goto e

rem 0.关闭Bat
:end
exit

rem 1.当前时间
::表示从左向右指针向右偏0位，然后从指针偏移到的位置开始提取8位字符
:a
echo.
echo 当前时间是： %date% %time:~0,8% 
echo.
pause
goto StartStudy

rem 2.打开网易云音乐
::需要修改路径
:b 
echo.
start   /max "" "D:\软件\CloudMusic\cloudmusic.exe"
echo.
pause
goto StartStudy

rem 3.测试延迟
:: 出现错误再次输入IP
:c
set /p ip=请输入要ping的IP：
ping %ip%

if not %errorlevel% == 0 (
   echo.
   echo Ping对方的IP出现错误
   goto a
)
echo.
pause
goto StartStudy

rem 4.创建txt文本
:d 
echo.
set /p txtPath=请输入要创建的文本路径: 
set /p txtName=请输入要创建的文本名:
set /p txtContent=请输入文本内容:
echo.
echo %txtContent% >> %txtPath%/%txtName%.txt  &&  echo 创建成功! || echo 创建失败!

echo.
pause
goto StartStudy

rem 5.文件夹操作
::需要修改路径
:e 
::创建文件夹
echo.
echo 开始创建文件夹 

if not exist F:\我的文件夹 (
md  F:\我的文件夹 &&  echo F:\我的文件夹 创建成功! || echo 创建失败!
)else (
 echo 已经存在 F:\我的文件夹,不需要创建!
)
echo.

::延迟3秒 重命名文件夹
echo 按下任意键，将在3秒后把 我的文件夹 改名为 我的改名文件夹
pause>nul
ping 127.0.0.1>nul -n 3 
ren F:\我的文件夹 我的改名文件夹 && echo 改名成功! || echo 改名失败!

::延迟3秒 复制文件夹 /e 复制所有子目录，包括空目录。/y 覆盖文件
echo 按下任意键，将在3秒后把 我的改名文件夹 复制到 D盘 下
pause>nul
choice /t 3 /d y /n >nul
xcopy "F:\我的改名文件夹" "D:\我的改名文件夹\" /e /y && echo D:\改名后的文件夹 复制成功! || echo 复制失败!

::延迟3秒 删除文件夹 /s 是否删除子目录 /q 是否询问
echo 按下任意键，将在3秒后删除创建的文件夹
pause>nul
ping 127.0.0.1>nul -n 3
rd /s /q D:\我的改名文件夹 && rd /s /q F:\我的改名文件夹  && rd /s /q F:\我的文件夹 &&  echo 删除成功! 

echo.
pause
goto StartStudy

