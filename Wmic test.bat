title Ejecucion wmic
@echo OFF
rem Ejemplar , revisar el uso de comillas simples cuando el paquete lleva espacios
wmic
product where "name ='Adobe Acrobat Reader DC - Español'" call uninstall /nointeractive
