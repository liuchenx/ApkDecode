@echo off
echo Target Apk: %2
echo I: run ...
set apktool=%~dp0apktool_2.0.2.jar
java -jar "%apktool%" d -f %2

IF %ERRORLEVEL%==0 goto APKTOOL_OK
IF %ERRORLEVEL%==1 goto APKTOOL_FAIL

:APKTOOL_OK
echo I: Apktool decode finish ...
set dex2jar=%~dp0dex2jar-2.0\d2j-dex2jar.bat

call "%dex2jar%" -d -f %2
goto FINISH

:APKTOOL_FAIL
echo E: Apktool decode fail !!!
goto FINISH

:FINISH
pause