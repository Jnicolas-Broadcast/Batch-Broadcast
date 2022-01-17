title Reinstalar Adobe Reader DC 21.007.20099
:: ----------------------------------------------------------------------------------------------------------------------------------------
:: DESDE LANSWEEPER:
:: xcopy "C:\Program Files (x86)\Lansweeper\PackageShare\Installers\Nuevo Acrobat Reader\AcroRead.msi" /f /z 
:: ----------------------------------------------------------------------------------------------------------------------------------------

::eliminamos..
msiexec.exe /x "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Nuevo Acrobat Reader\AcroRead.msi" /norestart /qn
::instalamos..
msiexec.exe /i "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Nuevo Acrobat Reader\AcroRead.msi" /norestart /qn
timeout 300 /nobreak
:: espera de 5 minutos
:: actualizamos..
msiexec.exe /p "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Nuevo Acrobat Reader\AcroRdrDCUpd2100720099.msp" /norestart /qn
:: espera de 7 minutos
timeout 420 /nobreak
taskkill /im msiexec.exe /f /t
net stop msiserver
timeout 7 /nobreak
net start msiserver
start "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Purgar AcroRead service.bat"
REM Finish..