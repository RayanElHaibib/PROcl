# Script PowerShell pour créer un repository GitHub
# Exécutez ce script après avoir créé le repository sur GitHub

Write-Host "🚀 Configuration du repository GitHub pour ProClone" -ForegroundColor Green
Write-Host ""

# Demander le nom d'utilisateur GitHub
$username = Read-Host "Entrez votre nom d'utilisateur GitHub"
$repoName = Read-Host "Entrez le nom du repository (défaut: proclone)"

if ([string]::IsNullOrEmpty($repoName)) {
    $repoName = "proclone"
}

Write-Host ""
Write-Host "📋 Configuration détectée :" -ForegroundColor Yellow
Write-Host "   Username: $username" -ForegroundColor Cyan
Write-Host "   Repository: $repoName" -ForegroundColor Cyan
Write-Host "   URL: https://github.com/$username/$repoName" -ForegroundColor Cyan
Write-Host ""

$confirm = Read-Host "Confirmer ? (y/n)"

if ($confirm -eq "y" -or $confirm -eq "Y") {
    Write-Host ""
    Write-Host "🔗 Ajout du remote origin..." -ForegroundColor Green
    
    # Ajouter le remote origin
    git remote add origin "https://github.com/$username/$repoName.git"
    
    Write-Host "✅ Remote origin ajouté !" -ForegroundColor Green
    Write-Host ""
    Write-Host "📤 Push vers GitHub..." -ForegroundColor Green
    
    # Pousser vers GitHub
    git push -u origin main
    
    Write-Host ""
    Write-Host "🎉 Repository GitHub configuré avec succès !" -ForegroundColor Green
    Write-Host "🌐 Votre projet est maintenant disponible sur :" -ForegroundColor Cyan
    Write-Host "   https://github.com/$username/$repoName" -ForegroundColor Yellow
} else {
    Write-Host "❌ Configuration annulée." -ForegroundColor Red
}

Write-Host ""
Write-Host "Appuyez sur une touche pour continuer..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
