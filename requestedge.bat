@echo off
SET /A COUNT=0
SET /A MAX_COUNT=100000

:LOOP
IF %COUNT% GEQ %MAX_COUNT% GOTO END

start msedge "http://172.16.1.65/dvwa/login.php"
TIMEOUT /T 10
taskkill /IM msedge.exe /F

SET /A COUNT+=1
GOTO LOOP

:END
echo Completado.
