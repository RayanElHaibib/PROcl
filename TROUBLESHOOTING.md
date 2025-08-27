# 🔧 Guide de Résolution des Problèmes - ProClone

## Erreurs Courantes et Solutions

### ❌ Erreur: "ENOENT: no such file or directory, stat '.../out/404.html'"

**Cause :** Le projet Next.js n'a pas été construit avant le lancement du bot.

**Solution :**
```bash
cd next/proclone
npm run build
cd ../../Bot
npm run dev
```

### ❌ Erreur: "TokenInvalid: An invalid token was provided"

**Cause :** Le token Discord dans le fichier `.env` est invalide ou manquant.

**Solution :**
1. Vérifiez que le fichier `.env` existe dans le dossier `Bot/`
2. Ajoutez votre token Discord valide :
   ```
   DISCORD_BOT_TOKEN=votre_token_ici
   ```
3. Redémarrez le bot

### ❌ Erreur: "npm: command not found"

**Cause :** Node.js et npm ne sont pas installés.

**Solution :**
1. Téléchargez et installez Node.js depuis https://nodejs.org/
2. Redémarrez votre terminal
3. Vérifiez l'installation : `node --version` et `npm --version`

### ❌ Erreur: "Port 3001 already in use"

**Cause :** Un autre service utilise déjà le port 3001.

**Solution :**
1. Arrêtez le service qui utilise le port 3001
2. Ou modifiez le port dans `config.json` :
   ```json
   {
     "port": 3002
   }
   ```

### ❌ Erreur: "Cannot find module 'discord.js'"

**Cause :** Les dépendances npm ne sont pas installées.

**Solution :**
```bash
cd Bot
npm install
```

### ❌ Erreur: "TypeScript compilation failed"

**Cause :** TypeScript n'est pas installé ou mal configuré.

**Solution :**
```bash
npm install -g typescript ts-node
cd Bot
npm install
```

## 🔍 Vérifications de Base

### 1. Structure des Dossiers
Vérifiez que votre projet a cette structure :
```
ProClone/
├── Bot/
│   ├── .env
│   ├── config.json
│   └── src/
├── next/
│   └── proclone/
│       ├── out/          ← Doit exister après build
│       └── src/
└── Images/
    ├── bg/
    ├── badges/
    └── profile/
```

### 2. Fichiers de Configuration
- ✅ `.env` dans le dossier `Bot/`
- ✅ `config.json` avec les bonnes valeurs
- ✅ `package.json` dans les deux dossiers

### 3. Dépendances Installées
```bash
# Dans le dossier Bot
cd Bot
npm list --depth=0

# Dans le dossier Next.js
cd ../next/proclone
npm list --depth=0
```

## 🚀 Solutions Rapides

### Redémarrage Complet
```bash
# 1. Arrêter tous les processus
# 2. Construire Next.js
cd next/proclone
npm run build

# 3. Redémarrer le bot
cd ../../Bot
npm run dev

# 4. Redémarrer l'interface web
cd ../next/proclone
npm run dev
```

### Réinstallation des Dépendances
```bash
# Nettoyer et réinstaller
cd Bot
rm -rf node_modules package-lock.json
npm install

cd ../next/proclone
rm -rf node_modules package-lock.json
npm install
```

## 📞 Support

Si vous rencontrez d'autres problèmes :

1. **Vérifiez les logs** du terminal pour plus de détails
2. **Consultez la vidéo YouTube** : [Lien YouTube](https://www.youtube.com/watch?v=JxPRDzZspCM)
3. **Vérifiez que tous les prérequis** sont installés
4. **Utilisez les scripts automatiques** `start.bat` ou `start.ps1`

## 🔧 Commandes Utiles

```bash
# Vérifier la version de Node.js
node --version

# Vérifier la version de npm
npm --version

# Vérifier les processus sur les ports
netstat -ano | findstr :3001
netstat -ano | findstr :3000

# Nettoyer le cache npm
npm cache clean --force
```
