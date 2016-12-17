@echo off
title Instalacion de WhatsApp por USB en Android...          -Aldo
color 2A
MODE CON: COLS=64 LINES=20
echo.
echo.
echo.
echo.		WhatsApp v3.16.380
echo.
echo.
echo.
echo.
echo 			Preparando ADB...
adb devices > NUL

:install
cls
echo.
echo 	Asegurate de que el dispositivo tiene depuracion
echo 	USB activada y esta conectado correctamente
echo.
echo Buscando dispositivo...
adb wait-for-device
echo Encontrado. Instalando...
adb install -r WhatsApp.apk
echo.
pause
adb kill-server
