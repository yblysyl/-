choice /c 12 /N /M 1exit;2shutdown
if errorlevel 2  goto shutdd 
if errorlevel 1 goto enddd 
REM 应先判断数值最高的错误码
:end
:enddd
exit
:shutdd 	 
	shutdown -s -t 0
	