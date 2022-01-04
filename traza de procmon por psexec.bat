@ECHO OFF
cd c:\
PsExec64.exe -sd \\hostdestino c:\procmon64.exe -accepteula -backingfile c:\temp\proc.pml -quiet
REM luego de "\\hostdestino" sigue la ruta del ejecutable "procmon64.exe" en el destino, ubicado en su disco raiz.
REM Se indican los parametros y seguido, se guarda un fichero ".pml" , todo de manera silenciosa "-quiet"
msg * Ejecutando msiexec... (misma sintaxis del lanswp)
REM --------------------------------------------------------------------------------------------------------------
msiexec.exe /i "\\lansweeper1\DefaultPackageShare$\Installers\Firefox.msi" /norestart /qn
REM Arriba, es la linea que se ejecuta desde el Lansw
PAUSE
REM --------------------------------------------------------------------------------------------------------------
Psexec64.exe -sd \\hostdestino c:\procmon64.exe -accepteula -terminate -quiet
msg * "cerrando la traza del processmonitor"
xcopy \\hostdestino\c$\temp\proc.pml c:\
c:\procmon64.exe /openlog c:\proc.pml
PAUSE
REM Ubicacion del ejecutable a copiar (procmon64) hacia host destino:
REM \\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers