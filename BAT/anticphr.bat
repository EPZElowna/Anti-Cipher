@echo on
echo [INFO] Starte Website-Blockierung...


>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo [ERROR] Please launch the .bat as Admin!
    pause
    exit /b
)


set HOSTS_FILE=%SystemRoot%\System32\drivers\etc\hosts

echo [INFO] Host Data found! %HOSTS_FILE%


echo 127.0.0.1 api-3.cipher-panel.com >> %HOSTS_FILE%
echo 127.0.0.1 cph-online.com >> %HOSTS_FILE%

echo [INFO] Adding Cipher-Protection to your Server. . .
echo ------------------------------------------
echo 127.0.0.1 api-3.cipher-panel.com
echo 127.0.0.1 cph-online.com
echo ------------------------------------------

echo [INFO] Cipher-URL's blocked:
type %HOSTS_FILE% | findstr /I "cipher-panel cph-online"

echo [INFO] Cipher blocked.
pause
