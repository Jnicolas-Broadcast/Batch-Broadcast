title bajar servicios temporalmente
:: La idea es restablecer servicios para correr los deploys sin problemas.
@ECHO OFF
:: ts a "Windows installer esta ejecutandose continuamente en w10"
:: https://answers.microsoft.com/en-us/windows/forum/all/windows-installer-is-always-running-on-windows-10/9ac0f602-4797-4c61-b976-9a46081a887c
:: Se extraen indicaciones del topic y se utilizan (con algunos cambios) a continuación
net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver
timeout 7 /nobreak
net start cryptSvc
net start bits
:: elimina proc en segundo plano y reinicia servicio msi
taskkill /im OpenOffice417.exe /f /t
taskkill /im OfficeClickToRun.exe /f /t
taskkill /im msiexec.exe /f /t
net start msiserver
net start wuauserv
::ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
::ren C:\Windows\System32\catroot2 Catroot2.old
exit
 

