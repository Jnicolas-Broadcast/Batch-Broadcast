:: test Deploy de Office2019
rem xcopy "\\lsserver\packages\Office2019" c:\temp\Office\ /E
xcopy "{PackageShare}\installers\Office paquete setup exe\" c:\temp\Office\ /E
:: luego, se ejecuta el "setup" en el equipo local destino, ejemplo:
:: "c:\temp\Office\setup" /configure "c:\temp\Office\Office Standard 2019.xml"
"C:\temp\Office\setup" /configure "C:\temp\Office\x64Office-dply-config.xml"
rmdir /S /Q "C:\Temp\Office"
:: revisar, deberia estar ok..
:: debido a cómo se quiere instalar Office 2019, TIENE que instalarse como 
:: el usuario que inició sesión. La cuenta del sistema o las credenciales de escaneo 
:: no funcionarán, por lo que el usuario debe iniciar sesión en ese momento.
msg jcabral /server:10.1.6.36 Deploy realizado.