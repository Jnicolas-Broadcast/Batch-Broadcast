title Run psexec commands remotely
:: ejemplar de psexec
:: PsExec.exe @c:\ps\computer_list.txt -h -u .administrator -p $upper0P@$ -c "c:\ps\run.bat"
:: 
:: PsExec.exe @c:\ps\computer_list.txt -h -u .administrator -p $upper0P@$ -c "c:\ps\run.bat"
:: psexec \\PC1 -u PC1\user1 -p adminpassword -h -i cmd


:: ----> Cuando se ejecuta cmd.exe de forma interactiva a través de PsExec bajo un 
:: usuario remoto, no hay forma de elevar los privilegios (como Admin) cuando el UAC está activado. 
:: Para ejecutar los comandos con el token elevado de la cuenta, utilice la opción -h.
:: Esta opción significa que todos los comandos se ejecutarán en el modo 
:: "Ejecutar como administrador".