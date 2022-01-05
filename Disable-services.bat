title Deshabilitar servicios especificos
@echo off
net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver