@echo off
title ProClone - Reparation Urgente
echo ========================================
echo           REPARATION URGENTE
echo ========================================
echo.

echo [1/4] Nettoyage des processus...
taskkill /f /im node.exe 2>nul
taskkill /f /im npm.exe 2>nul
echo ✓ Processus nettoyes
echo.

echo [2/4] Construction de Next.js...
cd next\proclone
call npm run build
if %errorlevel% neq 0 (
    echo ERREUR: Construction Next.js echouee
    pause
    exit /b 1
)
echo ✓ Next.js construit avec succes
echo.

echo [3/4] Lancement de l'interface web...
start "Next.js Interface" cmd /k "npm run dev"
echo ✓ Interface web lancee
echo.

echo [4/4] Lancement du bot Discord...
cd ..\..\Bot
start "Bot Discord" cmd /k "npm run dev"
echo ✓ Bot Discord lance
echo.

echo ========================================
echo           REPARATION TERMINEE !
echo ========================================
echo.
echo 🌐 Interface Web: http://localhost:3000
echo 🤖 Bot Backend: http://localhost:3001
echo.
echo ATTENDEZ que les deux services demarrent
echo puis testez: http://localhost:3000/server/VOTRE_ID/utility
echo.
echo Appuyez sur une touche pour fermer...
pause >nul
