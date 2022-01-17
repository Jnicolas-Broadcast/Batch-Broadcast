title Reinstalar Adobe Reader DC 21.007.20099
:: ----------------------------------------------------------------------------------------------------------------------------------------
:: https://www.lansweeper.com/Forum/yaf_postsm44107_Copying-a-file-from-deploymentshare-to-Local-Machine-and-Create-Shortcut-on-Local-Machine.aspx#
REM Command: cmd.exe /c xcopy.exe /Y {PackageShare}\Installers\PATH_TO\YOUR_FILES\*.* "C:\PATH TO\DESTINATION"
:: ----------------------------------------------------------------------------------------------------------------------------------------
:: runas /user:administrador /password:password "cmd.exe /c xcopy.exe /Y '\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Nuevo Acrobat Reader\*.*' 'C:\' /f"
REM cmd.exe /c xcopy.exe /Y "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Nuevo Acrobat Reader\*.*" "C:\"

PAUSE
::eliminamos..
msiexec.exe /x "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Nuevo Acrobat Reader\AcroRead.msi" /norestart /qn
:: espera de 3 minutos
timeout 180 /nobreak
::instalamos..
msiexec.exe /i "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Nuevo Acrobat Reader\AcroRead.msi" /norestart /qn
timeout 300 /nobreak
:: espera de 5 minutos
:: actualizamos..
msiexec.exe /p "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Nuevo Acrobat Reader\AcroRdrDCUpd2100720099.msp" /norestart /qn
:: espera de 4 minutos
timeout 240 /nobreak
taskkill /im msiexec.exe /f /t
net stop msiserver
timeout 7 /nobreak
net start msiserver
start "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Purgar AcroRead service.bat"
REM Finish..