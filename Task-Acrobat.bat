title Test AcroRead
rem @ECHO OFF
rem xcopy \\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Acro reader\
rem cd C:\%USERPROFILE%\Desktop\Acro reader\
rem Aqui abajo ejecutamos un wmic call uninstall y quitamos el viejo acrobat
rem -------------------------------------------------------------------------------------------------------------------
rem                         EJEMPLO...
rem wmic product where name ="<PROGRAM NAME HERE>" call uninstall /nointeractive
rem Adobe Acrobat Reader DC - Español es el nombre con la vieja instalacion:
msg jcabral /server:10.1.6.36 Desinstalando AcroRead...
wmic product where "name ='Adobe Acrobat Reader DC - Español'" call uninstall /nointeractive
msg jcabral /server:10.1.6.36 ¿Instalar nuevo AcroRead?
msiexec /i "{PackageShare}\Installers\Acro reader\AcroRead.msi" /norestart /qn
rem Nueva linea...
rem -------------------------------------------------------------------------------------------------------------------
rem y la instalación del nuevo AcroRead
rem En Lansweeper:
msiexec /i "{PackageShare}\Installers\Acro reader\AcroRead.msi" /norestart /qn
rem desde cualquier otro host remoto:
rem msiexec /i "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\AcroRead.msi"  /norestart /qn
rem cualquier otro host remoto (con armado de un LOG):
rem msiexec /i "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\AcroRead.msi" /L*vx "\\10.1.6.36\c$\Users\jcabral\reporteDelMsi.txt" /norestart /qn
rem desde mi host:
rem msiexec /A /i "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\AcroRead.msi" /L*vx "\\10.1.6.36\c$\Users\jcabral\reporteDelMsi.txt" /norestart /qn
rem msiexec /i "C:\Users\jcabral\Desktop\Acro reader\AcroRead.msi" /norestart /qn
rem @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
rem Referencia a --> \\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Acro reader
rem Ejecucion en mi localhost hacia un solo destino:
rem msiexec.exe /i "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\" /norestart /qn