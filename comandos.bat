:: Desativar Windows Defender via Registro
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f

:: Desativar o Firewall do Windows
netsh advfirewall set allprofiles state off

:: Desabilitar notificações de segurança que avisa que o fw está desligado com o botão para religar
reg add "HKLM\SOFTWARE\Microsoft\Security Center\Feature" /v DisableNotifications /t REG_DWORD /d 1 /f

:: Desativar SmartScreen para aplicativos instalados 

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v EnableSmartScreen /t REG_DWORD /d 0 /f
