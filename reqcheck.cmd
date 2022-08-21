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
title "ZackathOS - 0.1.0" >nul 2>&1
set say=echo
set regadd=reg add
set "wtamy0=%say%  Zack: "
mode con:cols=35 lines=23 & color 0b
set "wtsv0=0.1.0"
for /f "tokens=4-5 delims=. " %%i in ('ver') do set wtver0=%%i.%%j
if "%wtver0%" == "6.0" set wtos0=Vista
if "%wtver0%" == "6.1" set wtos0=7
if "%wtver0%" == "6.2" set wtos0=8
if "%wtver0%" == "6.3" set wtos0=8.1
if "%wtver0%" == "10.0" set wtos0=10
:: Change this may violate the LICENSE of the Script!
%say% Proudly by ZackSH Tech - www.zacksh.my.id
ping -n 2 "">nul
%say% Copyright 2020 - 2022 ZackSH Tech
ping -n 2 "">nul
%say% Under GPLv2 License
ping -n 2 "">nul
%say% Script Version: %wtsv0%
ping -n 3 "">nul
goto wincheck
:: Lets Start!
:wincheck
cls 
%say%   .-----.
%say%   ^| ^| ^| ^|
%say%   ^|  -  ^|
%say%   ^'-----^' 
%say% =============
%wtamy0% Greetings, %userdomain%^^!
ping -n 2 "">nul
cls
%say%   .-----.
%say%   ^| ^| ^| ^|
%say%   ^|  -  ^|
%say%   ^'-----^' 
%say% =============
%say% My name is ZackSH, and I will be your assistant^^!
ping -n 3 "">nul
%say% Now, now. Let^'s see what your OS is.
ping -n 3 "">nul
cls
%say%   .-----.
%say%   ^| 0 0 ^|
%say%   ^|  -  ^| P R O C E S S I N G 
%say%   ^'-----^' 
%say% =============
%say% Beep, beep^^!
set totalmem=
set availableMem=
for /f "tokens=4" %%a in ('Systeminfo ^| findstr Physical') do if defined totalMem (set availableMem=%%a) else (set totalMem=%%a)
set "totalMem=%totalMem:,=%"
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set wartosbit0=32 || set wartosbit0=64
cls
%say%   .-----.
%say%   ^| ^| ^| ^|
%say%   ^|  -  ^|
%say%   ^'-----^' 
%say% =============
%wtamy0% A-ha^^! You^'re using Windows %wtos0%, %wartosbit0% BIT...(Minimum Is Windows 7)
ping -n 3 "">nul
%say% Aaaaand your RAM is... hold on. 
ping -n 3 "">nul
%say% Oh yes, %availableMem% of %totalmem% MB in total, I believe.
ping -n 3 "">nul
cls
%say%   .-----.
%say%   ^| ^| ^| ^|
%say%   ^|  -  ^|
%say%   ^'-----^' 
%say% =============
%say% Chill thats not my main purpose, but I'll download all Required Data!
ping -n 3 "">nul
cls
goto alternate-download

:alternate-download
%say%   .-----.
%say%   ^| ^| ^| ^|
%say%   ^|  -  ^|
%say%   ^'-----^'
%say% =============
%say% Before I Download the Data, I'll check if you have the latest version of the Script.
ping -n 3 "">nul
%say% Done! Now I Will Transit you to DownScript-Win%wtos0%
if "%wtos0%" == "10" goto downloadfor10
if "%wtos0%" == "8.1" goto downloadfor81
if "%wtos0%" == "8" goto downloadfor8
if "%wtos0%" == "7" goto downloadfor7
if "%wtos0%" == "Vista" goto downloadforvista
cls

:downloadfor10
mkdir %tmp%/library-ZackSH
cd %tmp%/library-ZackSH
./Firewall-Win10.cmd
::curl anything for windows 10

:downloadfor81
mkdir %tmp%/library-ZackSH
cd %tmp%/library-ZackSH
./Firewall-Win81.cmd
::curl anything for windows 8.1

:downloadfor8
mkdir %tmp%/library-ZackSH
cd %tmp%/library-ZackSH
./Firewall-Win8.cmd
::curl anything for windows 8

:downloadfor7
mkdir %tmp%/library-ZackSH
cd %tmp%/library-ZackSH
./Firewall-Win7.cmd
::curl anything for windows 7


:downloadforvista
mkdir %tmp%/library-ZackSH
cd %tmp%/library-ZackSH
./Firewall-WinVista.cmd
::curl anything for windows vista