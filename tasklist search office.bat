@echo off 
SET str1 = WINWORD.EXE
SET str2 = EXCEL.EXE
SET str3 = POWERPNT.EXE

if %str1%==String1 (echo "Word esta abierto") else (echo "Word esta cerrado")
if %str2%==String3 (echo "The value of variable c is String3") else (echo "Unknown value")

::tasklist /FI "IMAGENAME eq winword.exe" 2>NUL | find /I /N "winword.exe">NUL / if %ERRORLEVEL%==1 goto wordnotrunning
::---------------------------------------------------------------------------------------------------------------------------
REM Este es otro ejemplo
::SETLOCAL EnableExtensions
::SET EXE=MyProg.exe
REM for testing
REM SET EXE=svchost.exe
::FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF NOT %%x == %EXE% (
::  ECHO %EXE% is Not Running
  REM This GOTO may be not necessary
::  GOTO notRunning
:: ) ELSE (
::  ECHO %EXE is running
::  GOTO Running
:: )
:: ...
:: :Running
:: REM If Running label not exists, it will loop over all found tasks
REM programa arriba