@echo off & setlocal EnableExtensions EnableDelayedExpansion
:: License Of This Script 
:: Copyright 2020 - 2022 ZackSH Tech
:: Under GPLv2 License
:: Script Version: V1-Build-01

:: Basic Of CMD Settings, DO NOT CHANGE THIS! THIS WILL BRAKE THE SCRIPT!
(
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 2 /f >nul 2>&1
cd %tmp% && attrib /s /d +s +h *.bat >nul 2>&1
cd %tmp% && attrib /s /d +s +h *.cmd >nul 2>&1
cd %~dp0 && attrib /s /d +s +h hosts >nul 2>&1
cd %~dp0 && attrib /s /d +s +h system.ini >nul 2>&1
)
title "ZackathOS V1 - TweakForWin" >nul 2>&1
set say=echo
set regadd=reg add
set "wtamy0=%say%  Zack: "
mode con:cols=35 lines=23 & color 0b
set "wtsv0=V1-Build-01"
for /f "tokens=4-5 delims=. " %%i in ('ver') do set wtver0=%%i.%%j
if "%wtver0%" == "6.0" set wtos0=Vista
if "%wtver0%" == "6.1" set wtos0=7
if "%wtver0%" == "6.2" set wtos0=8
if "%wtver0%" == "6.3" set wtos0=8.1
if "%wtver0%" == "10.0" set wtos0=10
goto mainpurpose

:mainpurpose
%say% Proudly By ZackSH Technology
%say% By andhra21231
%say% Copyright 2020 - 2022 ZackSH Technology
%say% Made By <3 For Everyone, But Zackh <3 is Only For A :)
::PLEASE DONT REMOVE ANY FROM THIS FUCKING THING!
set "wtae0=AutoEndTasks"
set "wtam0=Software\Realtek\Audio\RtkNGUI64\PowerMgnt"
set "wtat0=AllowTelemetry"
set "wtat1=HungAppTimeout"
set "wtbi0=blockcontentexecutionfrominternet"
set "wtcf0=Common\Feedback"
set "wtcf0=Control\FileSystem"
set "wtci0=Customer Experience Improvement Program"
set "wtcm0=Control Panel\Mouse"
set "wtcp0=CpuPriorityClass"
set "wtcr0=HKCR"
set "wtcs0=System\CurrentControlSet"
set "wtcs1=ClearPageFileAtShutDown"
set "wtcu0=HKCU"
set "wtcv0=Windows\CurrentVersion"
set "wtcv1=Windows NT\CurrentVersion"
set "wtdb0=Debugger"
set "wtdh0=DisableHardwareAcceleration"
set "wtdk0=Control Panel\desktop"
set "wtdp0=AppID\DownloadProxy.EXE"
set "wtdp2=Tasks\DisplayPostProcessing"
set "wtdr1=DisallowRun"
set "wtdt0=DisableTelemetry"
set "wtdt1=DiagTrack"
set "wtdw0=REG_DWORD"
set "wtea0=Explorer\Advanced"
set "wter0=PCHealth\ErrorReporting"
set "wter1=Windows\Windows Error Reporting"
set "wtes0=Explorer\Serialize"
set "wtfa0=SystemFileAssociations"
set "wtfc0=Internet Explorer\Main\FeatureControl"
set "wtfl0=ForegroundLockTimeout"
set "wtfq0=TcpAckFrequency"
set "wtfw0=Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules"
set "wtgd0=Control\GraphicsDrivers\Scheduler"
set "wthd0=Hardware\Description"
set "wtic0=IsolatedCommand"
set "wtid0=Internet Explorer\DOMStorage"
set "wtie0=Image File Execution Options"
set "wtif0=Interfaces"
set "wtip0=InputPersonalization"
set "wtkb0=SvcHostSplitThresholdInKB"
set "wtlm0=HKLM"
set "wtls0=Services\LanmanServer"
set "wtlt0=LowLevelHooksTimeout"
set "wtmm0=Control\Session Manager\Memory Management"
set "wtmp0=MediaPlayer\Preferences"
set "wtmw0=Microsoft\Windows"
set "wtnd0=TCPNoDelay"
set "wtnv0=WindowsNT\CurrentVersion"
set "wtnw0=NoWorkingDirectory"
set "wto14=Office\14.0"
set "wto15=Office\15.0"
set "wto16=Office\14.0"
set "wtpa0=OSM\preventedapplications"
set "wtpc0=Control\PriorityControl"
set "wtpe0=Policies\Explorer"
set "wtpm0=Software\Policies\Microsoft"
set "wtpo0=PerfOptions"
set "wtps0=OSM\preventedsolutiontypes"
set "wtps0=Policies\System"
set "wtpw0=Please wait until it finished"
set "wtqp0=QPCore"
set "wtqp1=QQPCRTP"
set "wtrr0=RemoteRegistry"
set "wtsb0=Control\SafeBoot"
set "wtsc0=Software\Classes"
set "wtsc1=lfsvc"
set "wtsd0=Services\Dnscache\Parameters"
set "wtsm0=Software\Microsoft"
set "wtsp0=Multimedia\SystemProfile"
set "wtsp1=Services\Tcpip\ServiceProvider"
set "wtsr0=shell\runas"
set "wtsz0=REG_SZ"
set "wtta0=Tasks\Audio"
set "wtta1=Tasks\Pro Audio"
set "wttc0=Schedule\TaskCache\Tasks"
set "wttg0=Tasks\Games"
set "wttk0=C:\Windows\System32\taskkill.exe"
set "wttp0=Services\Tcpip\Parameters"
set "wttt0=Schedule\TaskCache\Tree"
set "wtwe0=Windows\Explorer"
set "wtwm0=Software\Wow6432Node\Microsoft"
set "wtwm0=WindowMetrics"
set "wtwn0=Software\Wow6432Node\Classes"
set "wtws0=Windows\Windows Search"
set wte0=echo
set wtra0=reg add
set "wtwo0=Word\Options"
set "wtls0=Services\LanmanServer\Parameters"
::
set "wtv01=Angel2.exe"
set "wtv02=chromium.exe"
set "wtv03=blastclnnn.exe"
set "wtv04=epicnet.exe"
set "wtv05=bytefence.exe"
set "wtv06=ccminer.exe"
set "wtv07=filename.exe"
set "wtv08=fun.exe"
set "wtv09=msblast.exe"
set "wtv10=mssecsvc.exe"
set "wtv11=mschojc.exe"
set "wtv12=Newfolder.exe"
set "wtv13=nscpucnminer32.exe"
set "wtv14=nscpucnminer64.exe"
set "wtv15=pcfaster.exe"
set "wtv16=scvhosts.exe"
set "wtv17=scvhsot.exe"
set "wtv18=scvvhsot.exe"
set "wtv19=Olalatheworld.exe"
set "wtv20=SegurazoClient.exe"
set "wtv21=SegurazoIC.exe"
set "wtv22=SegurazoService.exe"
set "wtv23=tasksche.exe"
set "wtv24=virus.exe"
set "wtv25=x.exe"
set "wtv26=winupgro.exe"
set "wtv27=Classified.exe"
set "wtv28=RegSvr.exe"
set "wtv29=brastk.exe"
set "wtv30=True_Love.exe"
set "wtv31=FUvirus.exe"
set "wtv32=sysguard.exe"
set "wtv33=iloveher.exe"
set "wtv34=MarioForever.exe"
set "wtv35=cloudnet.exe"
set "wtv36=bad.exe"
set "wtv37=Invoice-E_48F7B37FA8.pdf.exe"
set "wtv38=STATEMNT-E_.pdf.exe"
set "wtv39=STATEMNT-E_FF5039457304574230530914758303654534783458173204712-37407658458674.pdf.exe"
set "wtv40=051dd6888c6c6611342965b7f11402f8.exe"
set "wtv41=c-b4dba-1261-1389186301051dd6888c6c6611342965b7f11402f8.exe"
set "wtv42=051dd6888c6c6611342965b7f11402f8.PE_STATEMNT-E__pdf_exe"
set "wtv43=Ofeumyzllxohjhxjf.exe"
set "wtv44=Hiijzzhrailjvj.exe"
set "wtv45=ls430.exe"
set "wtv46=Azpeaevfvionvph.exe"
set "wtv47=Htoerngdvedlh.exe"
set "wtv48=SAntivirusIC.exe"
set "wtv49=SAntivirusService.exe"
set "wtv50=SAntivirusClient.exe"
set "wtv51=Dc.exe"
set "wtv52=Other.exe"
set "wtv53=SVIQ.exe"
set "wtv54=WinSit.exe"
set "wtv55=WindowsInternal.ComposableShell.Experiences.TextInput.InputApp.exe"
set "wtv56=msvhojc.exe"
set "wtv57=taskdl.exe"
set "wtv58=taskse.exe"
set "wtv59=wannacry.exe"
set "wtv60=taskhsvc.exe"
set "wtv61=wcry.exe"
set "wtv62=111.exe"
set "wtv63=lhdfrgui.exe"
set "wtv64=HokageFile.exe"
set "wtv65=Rin.exe"
set "wtv66=Obito.exe"
set "wtv67=KakashiHatake.exe"
set "wtv68=HOKAGE4.exe"
::
set "wtct0=%wtcs0%\Control"
set "wtdr0=%wtpe0%\%wtdr1%"