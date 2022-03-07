title Deployment Office 19 (x64)
:: test Deploy de Office2019 x64
:: xcopy "{PackageShare}\installers\Office paquete exe setup\" c:\temp\Office\ /E
:: luego, se ejecuta el "setup" en el equipo local destino, ejemplo:
:: "c:\temp\Office\Office paquete exe setup\setup" /configure "c:\temp\Office\Office paquete exe setup\x64Office-dply-config.xml"
:: Colocar aqui abajo la ruta completa con hostname o IPv4...
:: "{PackageShare}\installers\Office paquete exe setup\Setup.exe" /configure "{PackageShare}\installers\Office paquete exe setup\x64Office-dply-config.xml"
:: "\\10.1.3.117\utils$\Office paquete exe setup\Data\Setup.exe" /configure "\\10.1.3.117\utils$\Office paquete exe setup\Data\x64Office-dply-config.xml"
:: rem rmdir /S /Q "C:\Temp\Office paquete exe setup"
:: revisar, deberia estar ok..
:: debido a cómo se quiere instalar Office 2019, TIENE que instalarse como 
:: el usuario que inició sesión (y debera tener privilegios). La cuenta del sistema o las credenciales de escaneo 
:: no funcionarán, por lo que el usuario debe iniciar sesión en ese momento.
:: msg jcabral /server:10.1.6.36 Deploy en curso, revisar su instalacion completa en unos minutos.
:: -------------------------------------------------------------------------------------------------
rem Prueba...
:: test Deploy de Office2019 x64
rem xcopy "{PackageShare}\installers\Office paquete exe setup\" c:\temp\Office\ /E
:: luego, se ejecuta el "setup" en el equipo local destino, ejemplo:
"\\inodoro3\publico\Sistemas\Office paquete exe setup\setup" /configure "\\inodoro3\publico\Sistemas\Office paquete exe setup\x64Office-dply-config.xml"
:: Colocar aqui abajo la ruta completa con hostname o IPv4...
:: "{PackageShare}\installers\Office paquete exe setup\Setup.exe" /configure "{PackageShare}\installers\Office paquete exe setup\x64Office-dply-config.xml"
:: "\\10.1.3.117\utils$\Office paquete exe setup\Data\Setup.exe" /configure "\\10.1.3.117\utils$\Office paquete exe setup\Data\x64Office-dply-config.xml"
rem rmdir /S /Q "C:\Temp\Office paquete exe setup"
:: revisar, deberia estar ok..
:: debido a cómo se quiere instalar Office 2019, TIENE que instalarse como 
:: el usuario que inició sesión (y debera tener privilegios). La cuenta del sistema o las credenciales de escaneo 
:: no funcionarán, por lo que el usuario debe iniciar sesión en ese momento.
:: msg jcabral /server:10.1.6.36 Deploy en curso, revisar su instalacion completa en unos minutos.