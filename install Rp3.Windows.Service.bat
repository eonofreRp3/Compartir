@echo off
cd C:\Windows\Microsoft.NET\Framework\v4.0.30319
installutil.exe /ServiceName="Rp3 Job Service" /DisplayName="Rp3 Job Service" "C:\Rp3\Rp3.Windows.Services\Rp3.Windows.Service.exe"

net start "Rp3 Job Service"

if ERRORLEVEL 1 goto error
exit
:error
echo Ocurrió un error en la instalación
pause