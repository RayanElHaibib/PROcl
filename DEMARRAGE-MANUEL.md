# 🚀 Guide de Démarrage Manuel - ProClone

## 📋 Prérequis
- Node.js installé
- npm installé
- Tous les fichiers décompressés
- Fichier .env configuré

## 🔧 Démarrage Étape par Étape

### Étape 1: Construction de Next.js
```bash
cd ProClone/next/proclone
npm run build
```
**Attendre** que la construction soit terminée (✓ Compiled successfully)

### Étape 2: Lancer l'Interface Web (Terminal 1)
```bash
cd ProClone/next/proclone
npm run dev
```
**Attendre** que Next.js démarre (✓ Ready in X.Xs)

### Étape 3: Lancer le Bot Discord (Terminal 2)
```bash
cd ProClone/Bot
npm run dev
```
**Attendre** que le bot démarre (🌐 WEB Started)

## ✅ Vérification

### Port 3000 (Interface Web)
- Aller sur : http://localhost:3000
- Devrait afficher la page d'accueil

### Port 3001 (Bot Backend)
- Aller sur : http://localhost:3001/backend/status
- Devrait afficher le statut du bot

## 🎯 Test des Pages Serveur

Une fois les deux services lancés, testez :
```
http://localhost:3000/server/VOTRE_ID_SERVEUR/utility
http://localhost:3000/server/VOTRE_ID_SERVEUR/dashboard
http://localhost:3000/server/VOTRE_ID_SERVEUR/settings
```

## 🚨 Problèmes Courants

### "Page blanche" sur les pages serveur
- **Cause** : Next.js n'est pas lancé
- **Solution** : Lancer `npm run dev` dans le dossier next/proclone

### "Cannot connect" sur l'API
- **Cause** : Bot Discord n'est pas lancé
- **Solution** : Lancer `npm run dev` dans le dossier Bot

### Erreur de build Next.js
- **Cause** : Dépendances manquantes
- **Solution** : `npm install` dans le dossier next/proclone

## 🔗 URLs Importantes

- **Interface Web** : http://localhost:3000
- **Bot Backend** : http://localhost:3001
- **Dashboard** : http://localhost:3000/dashboard
- **Login Discord** : http://localhost:3001/backend/user/login

## 📱 Ordre de Démarrage

1. **Toujours commencer** par Next.js (port 3000)
2. **Puis lancer** le bot Discord (port 3001)
3. **Tester** les deux services avant d'utiliser

## 🎉 Succès

Quand tout fonctionne :
- ✅ Port 3000 : Interface web accessible
- ✅ Port 3001 : API bot accessible
- ✅ Pages serveur : Contenu affiché
- ✅ Connexion Discord : Fonctionnelle
