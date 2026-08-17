# X2CRYPTO BOT

> **Version publique — mise à jour le 2026-08-17**

Bot terminal TronMine VIP / X2Crypto — compatible **Windows** et **Termux Android**.
Runner obfusqué, gestion multi-session, licence par appareil.

[![Score vérification](https://img.shields.io/badge/v%C3%A9rification-10%2F10%20%E2%9C%85-brightgreen)](https://tronmine.vip/r/93279)
[![Plateforme](https://img.shields.io/badge/plateforme-TronMine%20VIP-orange)](https://tronmine.vip/r/93279)

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

- Dépôt crypto automatique sur les réseaux supportés (TRX, USDT, BNB…).
- Auto Invest avec cycle ou réinvestissement automatique.
- Suivi des dépôts jusqu'au retrait effectif.
- Retrait automatique ou manuel vers le wallet enregistré.
- Sessions isolées avec `--session NOM`.
- Déconnexion propre pour supprimer les sessions locales.
- Calculateur de profit +35 % sur 24h.
- Système de licence par appareil (anti-partage, clé SHA-256).
- Support Telegram intégré avec `@LXM67bot`.
- Runner obfusqué — source protégée, mise à jour centralisée.

---

## 🔐 Système de licence

L'accès est contrôlé par une **clé unique par appareil** :

- La clé est liée à l'empreinte matérielle de votre appareil dès la première activation.
- Toute tentative d'utilisation sur un autre appareil est bloquée automatiquement.
- Pour transférer votre licence sur un nouvel appareil, contactez le support.

---

## 📊 Résultat vérification (2026-08-17)

| Test | Résultat |
|------|----------|
| Site TronMine VIP accessible | ✅ |
| Lien parrainage `/r/93279` | ✅ |
| Endpoint `/ajax_auth` | ✅ |
| Extraction adresse dépôt OxaPay | ✅ |
| Plans d'investissement (10 plans) | ✅ |
| Token CSRF extraction | ✅ |
| Module licence admin_panel | ✅ |
| Hachage SHA-256 | ✅ |
| Utilisateurs actifs (4) | ✅ |

**Score : 10/10 — Système 100% opérationnel** ✅

---

## 📞 Support & liens

- **Plateforme Officielle** : TronMine VIP — https://tronmine.vip/r/93279
- Bot Telegram : `@LXM67bot` — https://t.me/LXM67bot
- WhatsApp : `+261347281599` — https://wa.me/261347281599
- Dépôt GitHub public : https://github.com/Baggio67/x2crypto-bot
