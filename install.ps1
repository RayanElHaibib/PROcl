# Script d'installation automatique pour ProClone
# Exécutez ce script en tant qu'administrateur

Write-Host "🚀 Installation de ProClone..." -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green

# Vérifier si Node.js est installé
try {
    $nodeVersion = node --version
    Write-Host "✅ Node.js détecté: $nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Node.js n'est pas installé. Veuillez l'installer depuis https://nodejs.org/" -ForegroundColor Red
    exit 1
}

# Vérifier si npm est installé
try {
    $npmVersion = npm --version
    Write-Host "✅ npm détecté: $npmVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ npm n'est pas installé." -ForegroundColor Red
    exit 1
}

Write-Host "`n📁 Configuration des images..." -ForegroundColor Yellow

# Aller dans le dossier Images et décompresser les fichiers
Set-Location "Images"

if (Test-Path "bg.zip") {
    Write-Host "📦 Décompression de bg.zip..." -ForegroundColor Cyan
    Expand-Archive -Path "bg.zip" -DestinationPath "." -Force
    Write-Host "✅ bg.zip décompressé" -ForegroundColor Green
}

if (Test-Path "badges.zip") {
    Write-Host "📦 Décompression de badges.zip..." -ForegroundColor Cyan
    Expand-Archive -Path "badges.zip" -DestinationPath "." -Force
    Write-Host "✅ badges.zip décompressé" -ForegroundColor Green
}

if (Test-Path "profile.zip") {
    Write-Host "📦 Décompression de profile.zip..." -ForegroundColor Cyan
    Expand-Archive -Path "profile.zip" -DestinationPath "." -Force
    Write-Host "✅ profile.zip décompressé" -ForegroundColor Green
}

Write-Host "`n🤖 Configuration du bot Discord..." -ForegroundColor Yellow

# Aller dans le dossier Bot
Set-Location "../Bot"

# Créer le fichier .env
Write-Host "📝 Création du fichier .env..." -ForegroundColor Cyan
New-Item -Path ".env" -ItemType File -Force | Out-Null

# Ajouter les variables d'environnement
Add-Content -Path ".env" -Value "DISCORD_BOT_TOKEN="
Add-Content -Path ".env" -Value "CLIENT_ID="
Add-Content -Path ".env" -Value "CLIENT_SECRET="
Add-Content -Path ".env" -Value "I8PHPSESSID="

Write-Host "✅ Fichier .env créé" -ForegroundColor Green

# Installer les dépendances du bot
Write-Host "📦 Installation des dépendances du bot..." -ForegroundColor Cyan
npm install

# Installer TypeScript globalement
Write-Host "🔧 Installation de TypeScript globalement..." -ForegroundColor Cyan
npm install -g ts-node typescript

Write-Host "`n🌐 Configuration de l'interface web..." -ForegroundColor Yellow

# Aller dans le dossier Next.js
Set-Location "../next/proclone"

# Installer les dépendances de l'interface web
Write-Host "📦 Installation des dépendances de l'interface web..." -ForegroundColor Cyan
npm install

Write-Host "`n🎉 Installation terminée avec succès !" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green

Write-Host "`n📋 Prochaines étapes :" -ForegroundColor Yellow
Write-Host "1. Configurez votre fichier .env dans le dossier Bot avec vos tokens Discord" -ForegroundColor White
Write-Host "2. Lancez le bot : cd Bot && npm run dev" -ForegroundColor White
Write-Host "3. Lancez l'interface web : cd next/proclone && npm run dev" -ForegroundColor White

Write-Host "`n🔗 Ports par défaut :" -ForegroundColor Yellow
Write-Host "- Bot Backend : http://localhost:3001" -ForegroundColor White
Write-Host "- Interface Web : http://localhost:3000" -ForegroundColor White

Write-Host "`n📚 Pour plus d'informations, consultez le README_FR.md" -ForegroundColor Cyan

# Retourner au répertoire racine
Set-Location "../../"
