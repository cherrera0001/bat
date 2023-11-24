@echo off
SET /A COUNT=0
SET /A MAX_COUNT=100

:LOOP
IF %COUNT% GEQ %MAX_COUNT% GOTO END

start iexplore "http://172.16.1.65/dvwa/login.php"
TIMEOUT /T 5
taskkill /IM iexplore.exe /F

SET /A COUNT+=1
GOTO LOOP

:END
echo Completado.
