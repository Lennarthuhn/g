@echo off
echo ================================
echo   Minecraft Server + Playit Autostart
echo ================================

:: Warte kurz, bis System bereit ist
timeout /t 5 >nul

:: Starte Minecraft-Server (im eigenen Fenster)
echo [1/2] Starte Minecraft-Server...
start "Minecraft Server" java -Xmx2G -Xms1G -jar paper.jar nogui

:: Warte 10 Sekunden, damit der Server richtig läuft
echo [Warte 10 Sekunden, bis Server läuft...]
timeout /t 10 >nul

start "Geyser" cmd /k java -jar ""C:\Users\huhn\Documents\GitHub\g\geyser\Geyser-Standalone.jar""

echo [Warte 10 Sekunden, bis geyser läuft...]
timeout /t 10 >nul

:: Starte Playit.gg
echo [2/2] Starte Playit.gg Tunnel...
start "" "C:\Program Files\playit_gg\bin\playit.exe"

echo Fertig! Server laeuft.
pause