@echo off

::1.Call
::����  ��ϰ.bat  ����1:100   ����2�����Ǵ�˧��
call Call��ϰ.bat 100 ���Ǵ�˧�� 
::����ֱ�Ӽ̳б���BBB
echo %BBB%
::������ɺ󣬼���ִ��
pause


::2.û�п��������ӳ���չ
set /a AAA=0
for /L %%a in (1,1,5) do (
    set /a AAA=%%a
    ::����� AAA ��Զ����0����Ϊdo()���渴����䣬���е��������൱��һ��������ִ�У��൱�����������
    echo %AAA%
)
::����AAA=5
echo %AAA%
pause


::3.���������ӳ���չ
setlocal EnableDelayedExpansion 

set /a AAA=0
for /L %%a in (1,1,5) do (
    set /a AAA=%%a
    ::���������ӳ���չ����!AAA!��ȡֵ��%AAA%���ǵ���0
    echo !AAA!
)
::����AAA=5
echo %AAA%
pause