@echo off
:Start
SET CURRENTDIR=%~dp0%
SET "JARFILE=%CURRENTDIR%kizeo_connector.jar"
SET "CONFIG=%CURRENTDIR%config.json"
echo %JARFILE%
java -jar "%JARFILE%" "%CONFIG%"
ping -n 10 localhost
goto Start
