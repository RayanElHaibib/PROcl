# ProClone - Bot Discord Clone

## Description
ProClone est un clone du bot Discord ProBot avec une interface web moderne construite avec Next.js et un backend Express.

## Structure du Projet

### 📁 Bot/
- **Bot Discord** : Bot principal écrit en TypeScript avec Discord.js
- **API Backend** : Serveur Express avec routes API
- **Base de données** : Support JSON, MongoDB et mémoire

### 📁 next/proclone/
- **Interface Web** : Dashboard moderne construit avec Next.js
- **Design** : Interface utilisateur responsive avec Tailwind CSS

### 📁 Images/
- **Assets** : Images, badges et arrière-plans pour le bot

## Installation et Configuration

### 1. Prérequis
- Node.js (version 18 ou supérieure)
- npm ou yarn
- Token Discord Bot
- ID Client Discord
- Secret Client Discord

### 2. Configuration des Images
```bash
cd Images
# Décompresser les fichiers d'images
Expand-Archive -Path "bg.zip" -DestinationPath "." -Force
Expand-Archive -Path "badges.zip" -DestinationPath "." -Force
Expand-Archive -Path "profile.zip" -DestinationPath "." -Force
```

### 3. Configuration du Bot Discord
```bash
cd Bot
# Créer le fichier .env
New-Item -Path ".env" -ItemType File -Force

# Ajouter les variables d'environnement
Add-Content -Path ".env" -Value "DISCORD_BOT_TOKEN=VOTRE_TOKEN_ICI"
Add-Content -Path ".env" -Value "CLIENT_ID=VOTRE_CLIENT_ID_ICI"
Add-Content -Path ".env" -Value "CLIENT_SECRET=VOTRE_CLIENT_SECRET_ICI"
Add-Content -Path ".env" -Value "I8PHPSESSID=VOTRE_SESSION_ID_ICI"

# Installer les dépendances
npm install

# Installer TypeScript globalement
npm install -g ts-node typescript
```

### 4. Configuration de l'Interface Web
```bash
cd next/proclone
npm install
```

## Lancement

### 🚀 Démarrage Automatique (Recommandé)
Utilisez l'un des scripts de démarrage :

**Windows (Batch) :**
```bash
start.bat
```

**Windows (PowerShell) :**
```powershell
.\start.ps1
```

### 🔧 Démarrage Manuel

#### 1. Construction du projet Next.js (OBLIGATOIRE)
```bash
cd next/proclone
npm run build
```

#### 2. Bot Discord
```bash
cd Bot
npm run dev
```

#### 3. Interface Web
```bash
cd next/proclone
npm run dev
```

### ⚠️ Important
**L'erreur "ENOENT: no such file or directory, stat '.../out/404.html'"** se produit si le projet Next.js n'a pas été construit. 
Toujours exécuter `npm run build` avant de lancer le bot !

## Configuration du Bot

### Fichier config.json
```json
{
  "prefix": "#",
  "redirectUri": "http://localhost:3001/backend/user/callback",
  "clientId": "VOTRE_CLIENT_ID",
  "db": "json",
  "port": 3001,
  "CORS": true,
  "logTraffic": true,
  "rateLimiter": true
}
```

### Variables d'Environnement (.env)
- `DISCORD_BOT_TOKEN` : Token de votre bot Discord
- `CLIENT_ID` : ID client de votre application Discord
- `CLIENT_SECRET` : Secret client de votre application Discord
- `I8PHPSESSID` : ID de session PHP (optionnel)

## Fonctionnalités

### Bot Discord
- ✅ 40+ commandes slash
- ✅ Système de modération
- ✅ Système de niveau et XP
- ✅ Système de crédits
- ✅ Gestion des rôles
- ✅ Logs et audit
- ✅ Support multilingue

### Interface Web
- ✅ Dashboard administrateur
- ✅ Gestion des serveurs
- ✅ Profils utilisateurs
- ✅ Statistiques et analytics
- ✅ Interface responsive

## Ports par Défaut
- **Bot Backend** : 3001
- **Interface Web** : 3000

## Support
Pour plus d'informations, consultez la vidéo YouTube de configuration : [Lien YouTube](https://www.youtube.com/watch?v=JxPRDzZspCM)

## Licence
ISC
