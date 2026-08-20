# X2CRYPTO BOT — VIP CLOUD

> **Version — Plateforme Cloud VIP (LTC)**

Bot terminal VIP / X2Crypto — compatible **Windows** et **Termux Android**.
Runner obfusqué et binaire chiffré, gestion multi-session, licence par appareil, minage Litecoin (LTC).

---

## 🚀 Installation rapide sur Termux

### 1) Installation initiale
```bash
cd ~
pkg update -y && pkg install git python -y
git clone https://github.com/Baggio67/x2crypto-bot.git
cd x2crypto-bot
chmod +x lancer_termux.sh
bash lancer_termux.sh
```

### 2) Mise à jour et relancement
```bash
cd ~/x2crypto-bot
git fetch origin
git reset --hard origin/master
bash lancer_termux.sh
```

### 3) Lancer une session spécifique
```bash
cd ~/x2crypto-bot
bash lancer_termux.sh --session auto-invest
bash lancer_termux.sh --session depot-normal
```

---

## 💻 Installation sur Windows

### Première installation
```powershell
cd $env:USERPROFILE
git clone https://github.com/Baggio67/x2crypto-bot.git
cd x2crypto-bot
.\lancer_bot.bat
```

### Mise à jour & relance
```powershell
cd $env:USERPROFILE\x2crypto-bot
git fetch origin
git reset --hard origin/master
.\lancer_bot.bat
```

### Plusieurs sessions
```powershell
.\lancer_bot.bat --session auto-invest
.\lancer_bot.bat --session depot-normal
```

---

## 🛠️ Lancement manuel

```bash
cd x2crypto-bot
python x2crypto_runner.py
```

---

## ⭐ Fonctionnalités principales (VIP Cloud)

- **Minage & Rendement** : Litecoin (LTC) & taux de conversion direct en USD
- **Plans d'investissement** :
  - *Pro Miner* (140% sur 6 jours)
  - *Vip Miner* (150% sur 5 jours)
  - *Premium plan* (150% sur 24h)
  - *Vip Premium* (200% sur 24h)
  - *Start Plan* (300% sur 24h)
- **Authentification Sécurisée** : Connexion par wallet LTC et PIN ou session active
- **Retraits automatiques / manuels** : Vers l'adresse LTC enregistrée (Min: 0.01 LTC)
- **Auto Invest** : Réinvestissement automatique des gains
- **Sessions isolées** : Multi-comptes avec `--session NOM`
- **Protection par licence** : Activation sécurisée par utilisateur et appareil

---

## 🔐 Contact & Support

- Bot Telegram : `@michelbaggio` — https://t.me/michelbaggio
- WhatsApp : `+261 34 72 815 99` — https://wa.me/261347281599
- Dépôt GitHub : https://github.com/Baggio67/x2crypto-bot
