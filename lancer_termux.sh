#!/usr/bin/env bash
# X2Crypto Bot - Termux & Linux launcher
# Compatible: Termux (Android), Ubuntu/Debian, Raspberry Pi, VPS

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
RESET='\033[0m'

echo -e "${YELLOW}"
echo "========================================"
echo "        X2CRYPTO BOT - LAUNCHER"
echo "========================================"
echo -e "${RESET}"

# Se placer dans le dossier du script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR" || exit 1

# --- Détection de Python 3 ---
PYTHON=""
for cmd in python3 python; do
    if command -v "$cmd" > /dev/null 2>&1; then
        VER=$("$cmd" -c "import sys; print(sys.version_info.major)" 2>/dev/null)
        if [ "$VER" = "3" ]; then
            PYTHON="$cmd"
            break
        fi
    fi
done

if [ -z "$PYTHON" ]; then
    echo -e "${YELLOW}[!] Python 3 introuvable. Installation en cours...${RESET}"
    # Détection de l'environnement
    if command -v pkg > /dev/null 2>&1; then
        # Termux
        pkg update -y && pkg install python -y
        PYTHON=python3
    elif command -v apt-get > /dev/null 2>&1; then
        # Debian/Ubuntu
        sudo apt-get update -y && sudo apt-get install python3 python3-pip -y
        PYTHON=python3
    else
        echo -e "${RED}[!] Impossible d'installer Python automatiquement.${RESET}"
        echo "    Installe Python 3 manuellement puis relance ce script."
        exit 1
    fi
fi

echo -e "${GREEN}[+] Python trouvé : $($PYTHON --version)${RESET}"

# --- Installation des dépendances ---
if [ -f "requirements.txt" ]; then
    echo -e "${YELLOW}[i] Vérification des dépendances...${RESET}"
    if ! "$PYTHON" -m pip install -q -r requirements.txt --break-system-packages 2>/dev/null \
        && ! "$PYTHON" -m pip install -q -r requirements.txt 2>/dev/null; then
        echo -e "${YELLOW}[!] Avertissement: Installation des dépendances échouée (le bot peut quand même fonctionner).${RESET}"
    fi
fi

# --- Mise à jour via git ---
if command -v git > /dev/null 2>&1 && [ -d ".git" ]; then
    echo -e "${YELLOW}[i] Vérification des mises à jour...${RESET}"
    git pull --ff-only 2>/dev/null && echo -e "${GREEN}[+] Bot à jour.${RESET}" \
        || echo -e "${YELLOW}[!] Mise à jour ignorée (modifications locales).${RESET}"
fi

# --- Lancement du bot ---
echo -e "${GREEN}[+] Lancement du bot...${RESET}"
echo ""
exec "$PYTHON" x2crypto_runner.py "$@"
