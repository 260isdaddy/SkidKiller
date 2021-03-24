@Echo off
chcp 65001
cls
color 3
title Skid Slayer (Flue made this)
echo.
echo 
echo ░░░░░░░░░░░█▀▀░░█░░░░░░
echo ░░░░░░▄▀▀▀▀░░░░░█▄▄░░░░
echo ░░░░░░█░█░░░░░░░░░░▐░░░
echo ░░░░░░▐▐░░░░░░░░░▄░▐░░░
echo ░░░░░░█░░░░░░░░▄▀▀░▐░░░
echo ░░░░▄▀░░░░░░░░▐░▄▄▀░░░░
echo ░░▄▀░░░▐░░░░░█▄▀░▐░░░░░
echo ░░█░░░▐░░░░░░░░▄░█░░░░░
echo ░░░█▄░░▀▄░░░░▄▀▐░█░░░░░
echo ░░░█▐▀▀▀░▀▀▀▀░░▐░█░░░░░
echo ░░▐█▐▄░░▀░░░░░░▐░█▄▄░░░
echo ░░░▀▀▄░░░░░░░░▄▐▄▄▄▀░░░
echo ░░░░░░░░░░░░░░░░░░░░░░░
echo.
echo --------------------
echo - CTRL + C TO STOP -
echo --------------------
set /p IP=enter IP=
color 3
:top
PING -n %IP% | FIND "TTL="
title :: Skid Slayer is Pinging %IP%
IF ERRORLEVEL 1 (echo [Slayed That SKid] %IP% [Slayed That SKid])
set /a num= (%Random%%%9)+1
color %num%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top