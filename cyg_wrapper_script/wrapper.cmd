@echo off
setlocal enabledelayedexpansion
@echo Cygwin Wrapper Skript
@echo Parameter: %*
set BASHLW=C:
set BASHPATH=\cygwin\bin\
set CURRENTDIR=%__CD__:\=/%
set CURRENTDIR=%CURRENTDIR:~3%
set CURRENTDRIVE=%__CD__:~0,1%
IF ["%*"] == [""] (
	set BASHPARAM=--login -c "cd '/cygdrive/!CURRENTDRIVE!/!CURRENTDIR!'; exec bash"
) ELSE (
	set PARAM=%*
	set PARAM=!PARAM:"='!
	set PARAM=!PARAM:^

	= !
	set BASHPARAM=--login -c "cd '/cygdrive/!CURRENTDRIVE!/!CURRENTDIR!' && !PARAM!"
)
@echo BASHPARAM=%BASHPARAM%
chdir /D !BASHLW!!BASHPATH!
bash.exe !BASHPARAM!
