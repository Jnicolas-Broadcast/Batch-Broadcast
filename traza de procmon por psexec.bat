@ECHO OFF
cd c:\
PsExec64.exe -sd \\10.1.5.3 c:\procmon64.exe -accepteula -backingfile c:\proc.pml -quiet
REM luego de "\\X.X.X.X" sigue la ruta del ejecutable "procmon64.exe" ubicado en ese X.X.X.X, y en su disco raiz.
REM Se indican los parametros y seguido, se guarda un fichero ".pml" , todo de manera silenciosa "-quiet"
Psexec64.exe -sd \\10.1.5.3 c:\procmon64.exe -accepteula -terminate -quiet
msg * "concluye la traza del processmonitor"
xcopy \\10.1.5.3\c$\proc.pml c:\
c:\procmon64.exe /openlog c:\proc.pml
PAUSE
REM Ubicacion del ejecutable a copiar (procmon64) hacia host destino:
REM \\X.X.X.X\c$\Program Files (x86)\Lansweeper\PackageShare\Installers