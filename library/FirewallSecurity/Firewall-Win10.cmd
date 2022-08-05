@echo off & setlocal EnableExtensions EnableDelayedExpansion
:: Basic Of CMD Settings, DO NOT CHANGE THIS! THIS WILL BRAKE THE SCRIPT!
(
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 2 /f >nul 2>&1
cd %tmp% && attrib /s /d +s +h *.bat >nul 2>&1
cd %tmp% && attrib /s /d +s +h *.cmd >nul 2>&1
cd %~dp0 && attrib /s /d +s +h hosts >nul 2>&1
cd %~dp0 && attrib /s /d +s +h system.ini >nul 2>&1
)
title "ZackathOS V1 - FirewallSecurityAssesment(FSA) - Win10" >nul 2>&1
set say=echo
set regadd=reg add
set "wtamy0=%say%  Zack: "
set "wtrr0=RemoteRegistry"
set "wtqp0=QPCore"
set "wtqp1=QQPCRTP"
set "wtdt1=DiagTrack"
mode con:cols=55 lines=10
set "wtsv0=V1-Build%time%"
for /f "tokens=4-5 delims=. " %%i in ('ver') do set wtver0=%%i.%%j

%say%   .-----.
%say%   ^| 0 0 ^|
%say%   ^|  -  ^| P R O C E S S I N G 
%say%   ^'-----^' 
%say% =============
%say% Make The Internet Safe For Everyone^^!
ping -n 3 "">nul
set __COMPAT_LAYER=RunAsInvoker  
attrib -s -h -r "%windir%\System32\Drivers\etc\hosts" >nul 2>&1
ping -n 1 "">nul
delete /F /Q /A %windir%\System32\Drivers\etc\"hosts.bak" >nul 2>&1
ping -n 1 "">nul
cd %windir%\System32\Drivers\etc & ren hosts hosts.wtbackup
ping -n 1 "">nul
xcopy /q /y ".\hosts" %windir%\System32\drivers\etc >nul 2>&1
ping -n 1 "">nul
xcopy /q /y ".\System.ini" %Systemroot% >nul 2>&1
ping -n 1 "">nul
netsh interface ipv4 add dnsserver "Wi-Fi" address=176.103.130.130 index=1 >nul 2>&1
netsh interface ipv4 add dnsserver "Wi-Fi" address=176.103.130.131 index=2 >nul 2>&1
netsh interface ipv4 add dnsserver "Wi-Fi" address=1.1.1.1 index=3 >nul 2>&1
netsh interface ipv4 add dnsserver "Wi-Fi" address=8.8.8.8 index=4 >nul 2>&1
netsh interface ipv4 add dnsserver "Wi-Fi" address=203.142.82.222 index=5 >nul 2>&1
netsh interface ipv4 add dnsserver "Wi-Fi" address=203.142.84.222 index=6 >nul 2>&1
::
netsh interface ipv4 add dnsserver "Ethernet" address=176.103.130.130 index=1 >nul 2>&1
netsh interface ipv4 add dnsserver "Ethernet" address=176.103.130.131 index=2 >nul 2>&1
netsh interface ipv4 add dnsserver "Ethernet" address=1.1.1.1 index=3 >nul 2>&1
netsh interface ipv4 add dnsserver "Ethernet" address=8.8.8.8 index=4 >nul 2>&1
netsh interface ipv4 add dnsserver "Ethernet" address=203.142.82.222 index=5 >nul 2>&1
netsh interface ipv4 add dnsserver "Ethernet" address=203.142.84.222 index=6 >nul 2>&1
:: You Don't Need download 1.1.1.1 Again, Or Maybe Download VPN

attrib +r "%windir%\System32\Drivers\etc\hosts" >nul 2>&1
cls

goto checkserv0
:checkserv0
%wte0%   .-----.
%wte0%   ^| 0 0 ^|
%wte0%   ^|  -  ^| P R O C E S S I N G 
%wte0%   ^'-----^' 
%wte0% =============
%wtamy0% There are some services on your PC 
ping -n 3 "">nul
%wte0% that is safe to be disabled.
ping -n 3 "">nul
%wte0% Hold on, let me do the thing...
sc config "%wtrr0%" start= disabled >nul 2>&1
sc config "%wtqp0%" start= disabled >nul 2>&1
sc config "%wtqp1%" start= disabled >nul 2>&1
sc config "%wtdt1%" start= disabled >nul 2>&1
sc stop "%wtrr0%" >nul 2>&1
sc stop "%wtdt1%" >nul 2>&1
sc stop "%wtqp0%" >nul 2>&1
sc stop "%wtqp1%" >nul 2>&1
sc stop "%wtsc1%" >nul 2>&1
sc stop "SAntivirusIC" >nul 2>&1
sc stop "SAntivirusSvc" >nul 2>&1
cls
goto checkserv1
:checkserv1
for /f %%i in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do %wtra0% "%wtcu0%\%wtcs0%\%wttp0%\%wtif0%\%%i" /v "%wtfq0%" /t %wtdw0% /d 0000001 /f >nul 2>&1
for /f %%i in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do %wtra0% "%wtcu0%\%wtcs0%\%wttp0%\%wtif0%\%%i" /v "TcpDelAckTicks" /t %wtdw0% /d 0000000 /f >nul 2>&1
for /f %%i in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do %wtra0% "%wtcu0%\%wtcs0%\%wttp0%\%wtif0%\%%i" /v "TCPNoDelay" /t %wtdw0% /d 0000001 /f >nul 2>&1
ipconfig /release >nul 2>&1
ipconfig /all >nul 2>&1
ipconfig /flushdns >nul 2>&1
ipconfig /renew >nul 2>&1
netsh int ip set dns >nul 2>&1
netsh winsock reset >nul 2>&1
netsh int tcp set global autotuninglevel=normal >nul 2>&1
netsh interface tcp set heuristics disabled >nul 2>&1
netsh advfirewall set allprofile state on >nul 2>&1
netsh int tcp set global dca=enabled >nul 2>&1
Powershell Set-NetTCPSetting -SettingName InternetCustom -AutoTuningLevelLocal normal >nul 2>&1
Powershell Set-NetTCPSetting -SettingName InternetCustom -Chimney disabled >nul 2>&1
Powershell Set-NetTCPSetting -SettingName InternetCustom -CongestionProvider ctcp >nul 2>&1
Powershell Set-NetTCPSetting -SettingName InternetCustom -EcnCapability default >nul 2>&1
Powershell Set-NetTCPSetting -SettingName InternetCustom -InitialRto 2000 >nul 2>&1
Powershell Set-NetTCPSetting -SettingName InternetCustom -MaxSynretransmissions 2 >nul 2>&1
Powershell Set-NetTCPSetting -SettingName InternetCustom -MinRto 300 >nul 2>&1
Powershell Set-NetTCPSetting -SettingName InternetCustom -NonSackRttResiliency disabled >nul 2>&1
Powershell Set-NetTCPSetting -SettingName InternetCustom -ScalingHeuristics disabled >nul 2>&1
Powershell Set-NetTCPSetting -SettingName InternetCustom -timestamps disabled >nul 2>&1

cls
./TweakForWin10.cmd
