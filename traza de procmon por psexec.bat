REM @ECHO OFF
cd c:\
PsExec64.exe -sd \\SISTEMA_12_705 c:\procmon64.exe -accepteula -backingfile c:\temp\proc.pml -quiet
REM luego de "\\SISTEMA_12_705" sigue la ruta del ejecutable "procmon64.exe" ubicado en ese SISTEMA_12_705, y en su disco raiz.
REM Se indican los parametros y seguido, se guarda un fichero ".pml" , todo de manera silenciosa "-quiet"
msg * Ejecutando msiexec... (misma sintaxis del lanswp)
REM --------------------------------------------------------------------------------------------------------------
msiexec.exe /i "\\lansweeper1\DefaultPackageShare$\Installers\Firefox.msi" /norestart /qn
REM Arriba, es la linea que se ejecuta desde el Lansw
PAUSE
REM --------------------------------------------------------------------------------------------------------------
Psexec64.exe -sd \\SISTEMA_12_705 c:\procmon64.exe -accepteula -terminate -quiet
msg * "concluye la traza del processmonitor"
xcopy \\SISTEMA_12_705\c$\temp\proc.pml c:\
c:\procmon64.exe /openlog c:\proc.pml
PAUSE
REM Ubicacion del ejecutable a copiar (procmon64) hacia host destino:
REM \\X.X.X.X\c$\Program Files (x86)\Lansweeper\PackageShare\Installers