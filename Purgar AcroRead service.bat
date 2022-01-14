:: desactivar Adobe-auto-update
:: --------------------------------------------
:: detener servicio
net stop AdobeARMservice
:: desactivar su tarea programada
SCHTASKS /End /TN "Adobe Acrobat Update Task"
:: desactivar de servicios el update
sc config AdobeARMservice start= disabled
:: eliminar el servicio
sc delete AdobeARMservice
:: deshabilitar y borrar la tarea del task scheduler
SCHTASKS /Change /TN "Adobe Acrobat Update Task" /DISABLE
SCHTASKS /Delete /TN "Adobe Acrobat Update Task" /F
REM Adobe Updater RIP...