
choice /c dme 
if errorlevel 3 goto defrag
if errorlevel 2 goto mem
if errorlevel 1 goto end

:defrag
echo 3
pause
goto end

:mem
echo 2
pause
goto end

:end
echo good bye
pause
