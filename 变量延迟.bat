@echo off

::1.Call
::调用  练习.bat  参数1:100   参数2：我是大帅哥
call Call练习.bat 100 我是大帅哥 
::可以直接继承变量BBB
echo %BBB%
::调用完成后，继续执行
pause


::2.没有开启变量延迟扩展
set /a AAA=0
for /L %%a in (1,1,5) do (
    set /a AAA=%%a
    ::这里的 AAA 永远等于0，因为do()后面复合语句，所有的命令是相当于一条命令来执行，相当于所有命令并行
    echo %AAA%
)
::这里AAA=5
echo %AAA%
pause


::3.开启变量延迟扩展
setlocal EnableDelayedExpansion 

set /a AAA=0
for /L %%a in (1,1,5) do (
    set /a AAA=%%a
    ::开启变量延迟扩展后，用!AAA!来取值，%AAA%还是等于0
    echo !AAA!
)
::这里AAA=5
echo %AAA%
pause