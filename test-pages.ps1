# Script de test des pages serveur ProClone
# Ce script teste que toutes les pages serveur sont accessibles

Write-Host "🧪 Test des Pages Serveur ProClone" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""

# ID de serveur de test (remplacez par votre vrai ID)
$serverId = "1376993662793285672"
$baseUrl = "http://localhost:3001"

# Liste des pages serveur à tester
$pages = @(
    "dashboard",
    "utility",
    "settings",
    "autoroles",
    "anti_raid",
    "auto_responder",
    "automod",
    "colors",
    "embed",
    "leveling",
    "logs",
    "mod",
    "mod_actions",
    "notifications-twitch",
    "panel_logs",
    "premium",
    "protection",
    "reaction_roles",
    "starboard",
    "temp_link",
    "temporary-channel",
    "twitch",
    "voice_online",
    "welcomer"
)

Write-Host "🔍 Test de la connexion au serveur..." -ForegroundColor Yellow
try {
    $response = Invoke-WebRequest -Uri "$baseUrl/backend/status" -UseBasicParsing -TimeoutSec 10
    if ($response.StatusCode -eq 200) {
        Write-Host "✅ Serveur accessible sur le port 3001" -ForegroundColor Green
    }
} catch {
    Write-Host "❌ Serveur non accessible sur le port 3001" -ForegroundColor Red
    Write-Host "   Assurez-vous que le bot est lancé avec: npm run dev" -ForegroundColor Yellow
    exit 1
}

Write-Host ""
Write-Host "📋 Test des pages serveur..." -ForegroundColor Yellow
Write-Host ""

$workingPages = 0
$totalPages = $pages.Count

foreach ($page in $pages) {
    $url = "$baseUrl/server/$serverId/$page"
    try {
        $response = Invoke-WebRequest -Uri $url -UseBasicParsing -TimeoutSec 10
        if ($response.StatusCode -eq 200) {
            Write-Host "✅ $page" -ForegroundColor Green
            $workingPages++
        } else {
            Write-Host "❌ $page (Status: $($response.StatusCode))" -ForegroundColor Red
        }
    } catch {
        Write-Host "❌ $page (Erreur: $($_.Exception.Message))" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "📊 Résumé des tests:" -ForegroundColor Cyan
Write-Host "   Pages fonctionnelles: $workingPages/$totalPages" -ForegroundColor White

if ($workingPages -eq $totalPages) {
    Write-Host ""
    Write-Host "🎉 Toutes les pages serveur fonctionnent parfaitement !" -ForegroundColor Green
    Write-Host "   Vous pouvez maintenant utiliser l'interface complète." -ForegroundColor White
} else {
    Write-Host ""
    Write-Host "⚠️  Certaines pages ne fonctionnent pas." -ForegroundColor Yellow
    Write-Host "   Vérifiez que Next.js est construit et que le bot est lancé." -ForegroundColor White
}

Write-Host ""
Write-Host "🔗 URLs de test:" -ForegroundColor Cyan
Write-Host "   Dashboard: $baseUrl/server/$serverId/dashboard" -ForegroundColor White
Write-Host "   Utility: $baseUrl/server/$serverId/utility" -ForegroundColor White
Write-Host "   Settings: $baseUrl/server/$serverId/settings" -ForegroundColor White
