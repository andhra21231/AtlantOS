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
title "ZackathOS V1 - ReqCheck" >nul 2>&1
set say=echo
set regadd=reg add
mode con:cols=50 lines=70 & color 0b
set "wtsv0=V1-Build%time%"
for /f "tokens=4-5 delims=. " %%i in ('ver') do set wtver0=%%i.%%j
if "%wtver0%" == "6.0" set wtos0=Vista
if "%wtver0%" == "6.1" set wtos0=7
if "%wtver0%" == "6.2" set wtos0=8
if "%wtver0%" == "6.3" set wtos0=8.1
if "%wtver0%" == "10.0" set wtos0=10
:: Change this may violate the LICENSE of the Script!
%say% Proudly by ZackSH Tech - www.zacksh.my.id
ping -n 1 "">nul
%say% Copyright 2020 - 2022 ZackSH Tech
ping -n 1 "">nul
%say% Under GPLv2 License
ping -n 1 "">nul
%say% Script Version: %wtsv0%
ping -n 3 "">nul
goto wincheck
:: Lets Start!
:wincheck
cls 


