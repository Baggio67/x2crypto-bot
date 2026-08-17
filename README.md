# X2CRYPTO BOT

Version publique du bot X2Crypto pour terminal, compatible Windows et Termux Android.

Le dépôt contient le runner principal, les scripts de lancement automatique et la gestion multi-session.

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

> Si vous avez des modifications locales à conserver, exécutez d'abord : `git stash push -u -m "sauvegarde avant mise à jour"`. Après la mise à jour, restaurez-les avec `git stash pop`.

### 3) Lancer une session spécifique
```bash
cd ~/x2crypto-bot
bash lancer_termux.sh --session auto-invest
bash lancer_termux.sh --session depot-normal
```

> Sur Termux, le script `lancer_termux.sh` vérifie si Python est présent, met à jour le dépôt si besoin et démarre le bot avec votre session locale.

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

> Si vous avez des modifications locales à conserver, exécutez d'abord `git stash push -u -m "sauvegarde avant mise à jour"`. Après la mise à jour, restaurez-les avec `git stash pop`.

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

Chaque utilisateur peut lancer le bot avec son propre wallet, sa propre clé et sa propre session locale.

---

## ⭐ Fonctionnalités principales

- Dépôt crypto automatique sur les réseaux supportés.
- Auto Invest avec cycle ou réinvestissement automatique.
- Suivi des dépôts jusqu’au retrait effectif.
- Retrait automatique ou manuel vers le wallet enregistré.
- Sessions isolées avec `--session NOM`.
- Déconnexion propre pour supprimer les sessions locales.
- Calculateur de profit +35 % sur 24h.
- Support Telegram intégré avec `@LXM67bot`.

---

## 📞 Support & liens

- **Plateforme Officielle** : TronMine VIP — https://tronmine.vip/r/93279
- Bot Telegram : `@LXM67bot` — https://t.me/LXM67bot
- WhatsApp : `+261347281599` — https://wa.me/261347281599
- Dépôt GitHub public : https://github.com/Baggio67/x2crypto-bot

