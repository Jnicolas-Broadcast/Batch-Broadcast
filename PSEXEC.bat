for /f %a in (HOSTS.txt) do move "\\%a\c$\*.xml" \\%a\c$\Office
:: el origen lleva comillas doble, el directorio destino , no
::for /f %a in (HOSTS.txt) do move "\\%a\c$\setup*.exe" \\%a\c$\Office
:: >>> FALTAN CARPETAS INDEXADAS DE "Office" y "Data" dentro de la misma contenedora raiz "office"
:: se resuelve el problema debajo...

::for /f %a in (HOST3.txt) do xcopy /y "C:\Office" \\%a\c$\Office /E

::para copias del nuevo .xml
::for /f %a in (nueva-ver.txt) do xcopy /y "C:\Office\x64Office-dply-config.xml" \\%a\c$\Office /E

::ejemplo
::psexec \\remote-pc -u “DOMAIN\Administrator” -p “password” cmd /c “msiexec.exe /i “\\server\share\application.msi” /quiet /norestart”

psexec \\10.1.5.3 -u ".\Administrador" -p password -c "C:\Office 19 Rev 2.0.bat"
psexec @prueba.txt -c "Office 19 Rev 2.0.bat"
rem ejemplo:
::for /f %a in (HOSTS.txt) do copy /y "\\%a\c$\Office" \\%a\c$\Office
::for /f %a in (pclist.txt) do copy /y \\server\share\file.msi \\%a\c$\

rem Para hacer una carpeta en varios hosts...(de la lista)
::for /f %a in (HOSTS.txt) do mkdir "\\%a\c$\Office"

::move \\10.1.3.55\c$\*.xml \\10.1.3.55\c$\Office\
::\\10.1.3.55\c$\set*.* \\10.1.3.55\c$\Office\
::\\10.1.3.55\c$\setup*.exe \\10.1.3.55\c$\Office\
