# Script de démarrage pour ProClone
# Ce script construit le projet Next.js et démarre le bot et l'interface web

Write-Host "========================================" -ForegroundColor Green
Write-Host "           ProClone Bot Discord" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""

# Étape 1: Construction du projet Next.js
Write-Host "[1/3] Construction du projet Next.js..." -ForegroundColor Yellow
Set-Location "next/proclone"

try {
    npm run build
    Write-Host "✓ Projet Next.js construit avec succès" -ForegroundColor Green
} catch {
    Write-Host "❌ Erreur lors de la construction du projet Next.js" -ForegroundColor Red
    Read-Host "Appuyez sur Entrée pour continuer..."
    exit 1
}

Write-Host ""

# Étape 2: Démarrage du bot Discord
Write-Host "[2/3] Démarrage du bot Discord..." -ForegroundColor Yellow
Set-Location "../../Bot"

Start-Process powershell -ArgumentList "-NoExit", "-Command", "npm run dev" -WindowStyle Normal
Write-Host "✓ Bot Discord démarré" -ForegroundColor Green

Write-Host ""

# Étape 3: Démarrage de l'interface web
Write-Host "[3/3] Démarrage de l'interface web..." -ForegroundColor Yellow
Set-Location "../next/proclone"

Start-Process powershell -ArgumentList "-NoExit", "-Command", "npm run dev" -WindowStyle Normal
Write-Host "✓ Interface web démarrée" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "           Démarrage terminé !" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""

Write-Host "🌐 Interface Web: http://localhost:3000" -ForegroundColor Cyan
Write-Host "🤖 Bot Backend: http://localhost:3001" -ForegroundColor Cyan
Write-Host ""

Write-Host "Les services sont maintenant en cours d'exécution dans des fenêtres séparées." -ForegroundColor Yellow
Write-Host "Vous pouvez fermer cette fenêtre." -ForegroundColor Yellow

# Retourner au répertoire racine
Set-Location "../../"
