@echo off
title ProClone - Démarrage Simple
echo ========================================
echo           ProClone Bot Discord
echo ========================================
echo.

echo [1/3] Construction du projet Next.js...
cd next\proclone
call npm run build
if %errorlevel% neq 0 (
    echo Erreur lors de la construction du projet Next.js
    pause
    exit /b 1
)
echo ✓ Projet Next.js construit avec succès
echo.

echo [2/3] Démarrage du bot Discord...
cd ..\..\Bot
start "ProClone Bot" cmd /k "npm run dev"
echo ✓ Bot Discord démarré
echo.

echo [3/3] Démarrage de l'interface web...
cd ..\next\proclone
start "ProClone Web" cmd /k "npm run dev"
echo ✓ Interface web démarrée
echo.

echo ========================================
echo           Démarrage terminé !
echo ========================================
echo.
echo 🌐 Interface Web: http://localhost:3000
echo 🤖 Bot Backend: http://localhost:3001
echo.
echo Les services sont maintenant en cours d'exécution.
echo Appuyez sur une touche pour fermer...
pause >nul
