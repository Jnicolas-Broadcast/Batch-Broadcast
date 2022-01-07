title bajar servicios temporalmente
:: La idea es restablecer servicios para correr los deploys sin problemas.
@ECHO OFF
net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver
taskkill /im OpenOffice417.exe /f /t

::taskkill /im msiexec.exe /f /t
