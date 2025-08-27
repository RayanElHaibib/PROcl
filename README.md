# 🚀 ProClone - Discord Bot + Web Dashboard

[![Discord](https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/)
[![Node.js](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white)](https://nodejs.org/)
[![Next.js](https://img.shields.io/badge/Next.js-000000?style=for-the-badge&logo=next.js&logoColor=white)](https://nextjs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white)](https://www.typescriptlang.org/)

## 📖 Description

ProClone est un bot Discord avancé avec une interface web moderne, offrant des fonctionnalités complètes de modération, d'économie, de niveau et bien plus encore.

## ✨ Fonctionnalités

### 🤖 Bot Discord
- **Modération** : Ban, Kick, Mute, Warn, Timeout
- **Économie** : Système de crédits, daily rewards
- **Niveaux** : XP text et vocal, classements
- **Auto-modération** : Protection anti-raid, filtres
- **Rôles automatiques** : Attribution basée sur des conditions
- **Logs** : Suivi complet des actions
- **Bienvenue** : Messages et rôles automatiques

### 🌐 Interface Web
- **Dashboard** : Gestion complète des serveurs
- **Pages serveur** : Configuration détaillée par serveur
- **Authentification Discord** : OAuth2 sécurisé
- **Responsive** : Compatible mobile et desktop
- **Thème moderne** : Interface élégante et intuitive

## 🛠️ Technologies

- **Backend** : Node.js, Express.js, TypeScript
- **Frontend** : Next.js, React, CSS Modules
- **Base de données** : JSON (avec support SQLite)
- **Authentification** : Discord OAuth2
- **API** : RESTful API complète

## 🚀 Installation

### Prérequis
- Node.js 18+ 
- npm ou yarn
- Compte Discord Developer

### 1. Cloner le projet
```bash
git clone https://github.com/votre-username/proclone.git
cd proclone
```

### 2. Configuration Discord
1. Créer une application sur [Discord Developer Portal](https://discord.com/developers/applications)
2. Récupérer `CLIENT_ID` et `CLIENT_SECRET`
3. Créer un bot et récupérer le token

### 3. Configuration des variables d'environnement
```bash
cd Bot
cp .env.example .env
```

Remplir `.env` :
```env
DISCORD_BOT_TOKEN=votre_token_bot
CLIENT_ID=votre_client_id
CLIENT_SECRET=votre_client_secret
```

### 4. Configuration du bot
Modifier `Bot/config.json` :
```json
{
  "prefix": "#",
  "redirectUri": "http://localhost:3001/backend/user/callback",
  "clientId": "votre_client_id",
  "port": 3001,
  "CORS": true,
  "logTraffic": true,
  "rateLimiter": true
}
```

### 5. Installation des dépendances
```bash
# Bot
cd Bot
npm install

# Interface Web
cd ../next/proclone
npm install
```

### 6. Construction de l'interface
```bash
npm run build
```

### 7. Lancement
```bash
# Retourner au dossier Bot
cd ../../Bot

# Lancer le bot (interface + API)
npm run dev
```

## 🌐 Utilisation

### URLs d'accès
- **Interface Web** : `http://localhost:3001/`
- **Dashboard** : `http://localhost:3001/dashboard`
- **Pages Serveur** : `http://localhost:3001/server/[ID]/utility`
- **API Backend** : `http://localhost:3001/backend/status`

### Commandes Discord
- `/help` - Affiche toutes les commandes
- `/ping` - Vérifie la latence du bot
- `/server` - Informations sur le serveur
- `/profile` - Profil utilisateur

## 📁 Structure du projet

```
ProClone/
├── Bot/                    # Bot Discord + API Backend
│   ├── src/
│   │   ├── commands/      # Commandes slash
│   │   ├── events/        # Événements Discord
│   │   ├── web/           # Serveur web Express
│   │   └── database/      # Base de données
│   ├── config.json        # Configuration
│   └── .env              # Variables d'environnement
├── next/                  # Interface web Next.js
│   └── proclone/
│       ├── src/          # Composants React
│       ├── pages/        # Pages de l'application
│       └── public/       # Assets statiques
├── Images/               # Images et assets
└── README.md            # Ce fichier
```

## 🔧 Configuration avancée

### Modules
- **Auto-roles** : Attribution automatique de rôles
- **Anti-raid** : Protection contre les raids
- **Logs** : Journalisation des actions
- **Leveling** : Système d'XP et de niveaux
- **Economy** : Système de crédits et récompenses

### Permissions
Le bot nécessite les permissions suivantes :
- `ADMINISTRATOR` ou permissions spécifiques selon les modules
- `MANAGE_ROLES` pour les rôles automatiques
- `MANAGE_MESSAGES` pour la modération
- `VIEW_AUDIT_LOG` pour les logs

## 🤝 Contribution

Les contributions sont les bienvenues ! 

1. Fork le projet
2. Créer une branche feature (`git checkout -b feature/AmazingFeature`)
3. Commit les changements (`git commit -m 'Add some AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

## 📝 Licence

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

## 🙏 Remerciements

- [Discord.js](https://discord.js.org/) - API Discord pour Node.js
- [Next.js](https://nextjs.org/) - Framework React
- [Express.js](https://expressjs.com/) - Framework web Node.js

## 📞 Support

- **Discord** : [Serveur de support](https://discord.gg/)
- **Issues** : [GitHub Issues](https://github.com/votre-username/proclone/issues)
- **Email** : votre-email@example.com

---

⭐ **N'oubliez pas de mettre une étoile si ce projet vous plaît !** ⭐
