rem @ECHO OFF
rem xcopy \\10.1.3.171\c$\Program Files (x86)\Lansweeper\PackageShare\Installers\Acro reader\
rem cd C:\%USERPROFILE%\Desktop\Acro reader\
rem Aqui abajo ejecutamos un wmic call uninstall y quitamos el viejo acrobat
rem -------------------------------------------------------------------------------------------------------------------

rem -------------------------------------------------------------------------------------------------------------------
msiexec.exe /i "{PackageShare}\Installers\Acro reader\AcroRead.msi" /norestart /qn
