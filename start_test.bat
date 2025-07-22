@echo off
title Laravel + Cloudflare Tunnel Starter

cd /d "C:\Users\Clarenz\Desktop\PHP\Computer_Parts_IMS\computer_parts_ims"

REM Start Laravel server on 127.0.0.1
start "" php artisan serve

REM Wait longer to ensure it's up
timeout /t 7 >nul

REM Start the tunnel
start "" "C:\Program Files (x86)\cloudflared\cloudflared.exe" tunnel --url http://127.0.0.1:8000

echo -------------------------------
echo Laravel and Tunnel are running!
echo Press any key to close this window.
pause >nul
