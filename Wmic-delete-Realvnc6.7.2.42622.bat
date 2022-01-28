:: Wmic - Desinstalar RealVNC
title Ejecucion wmic
@echo OFF
rem Ejemplar , revisar el uso de comillas simples cuando el paquete lleva espacios
wmic
product where "name ='VNC Server 6.7.2'" call uninstall /nointeractive