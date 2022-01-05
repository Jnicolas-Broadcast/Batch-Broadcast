title Habilitar servicios especificos
@echo off
net start wuauserv
net start cryptSvc
net start bits
net start msiserver