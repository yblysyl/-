@echo off
REM   md pingall
REM echo "AAAAAAAAAAAAAA">> pingall.txt
REM for /L %i in (1,1,20) do ping -n 1 -w 60  192.168.14.%i
REM for /L %%c in (1,1,20) do  ping -n 1 -w 60  192.168.14.%%c 
REM setlocal enabledelayedexpansion
REM 输出时间
echo %time:~0,5% 
pause
 set a="cbcd1234"
   echo %a%          
   set a=%a:1=kk%  
echo a   
   echo %a%          
pause
FOR /F "usebackq delims==" %%i IN (`set`) DO @echo %%i    !%%i!
pause
for /L %%a in (1,1,255) do for /L %%b in (1,1,255) do for /L %%c in (1,1,255) do for /L %%d in (1,1,255) do ping -n 1 -w 100 %%a.%%b.%%c.%%d && echo  %%a.%%b.%%c.%%d >>pingall.txt
pause
for /L %%c in (1,1,255) do ping -n 1 -w 100 192.168.14.%%c && echo 192.168.14.%%c >>pingall.txt
pause
call  pingall.txt
exit
