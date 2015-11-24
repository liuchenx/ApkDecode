set decodePath=%~dp0decode.bat
set apkIcon=%~dp0apk.ico
reg add "HKEY_CLASSES_ROOT\.apk" /ve /t reg_sz /d apkfile
reg add "HKEY_CLASSES_ROOT\apkfile\DefaultIcon" /ve /t reg_sz /d "%apkIcon%,0"
reg add "HKEY_CLASSES_ROOT\apkfile\shell\Apk decode\Command" /ve /t reg_sz /d "%decodePath%  -e %%1%" 

pause

