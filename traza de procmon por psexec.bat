@ECHO OFF
title Traza de procmon por psexec
cd c:\
PsExec64.exe -sd \\CONTADU_03_717 c:\procmon64.exe -accepteula -backingfile c:\proc.pml -quiet
REM luego de "\\X.X.X.X" sigue la ruta del ejecutable "procmon64.exe" ubicado en ese X.X.X.X, y en su disco raiz.
REM Se indican los parametros y seguido, se guarda un fichero ".pml" , todo de manera silenciosa "-quiet"
Psexec64.exe -sd \\CONTADU_03_717 c:\procmon64.exe -accepteula -terminate -quiet
msg * concluye la traza del processmonitor
xcopy \\CONTADU_03_717\c$\proc.pml \\SISTEMA_14_712\c$
c:\procmon64.exe /openlog c:\proc.pml
PAUSE


REM Ubicacion del ejecutable a copiar (procmon64) hacia host destino:
REM \\X.X.X.X\c$\Program Files (x86)\Lansweeper\PackageShare\Installers