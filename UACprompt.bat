@echo off
NET SESSION
IF %ERRORLEVEL% NEQ 0 GOTO ELEVATE
GOTO ADMINTASKS

:ELEVATE
CD /d %~dp0
MSHTA "javascript: var shell = new ActiveXObject('shell.application'); shell.ShellExecute('%~nx0', '', '', 'runas', 1);close();"
EXIT

:ADMINTASKS
Move "C:\Windows\Temp\Howler_Chat__Client_.jar" "%~dp0\Howler_Chat__Client_.jar"
%ALLUSERSPROFILE%
EXIT