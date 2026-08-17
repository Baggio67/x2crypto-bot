@echo off
title X2CRYPTO BOT - LANCEMENT
chcp 65001 >nul
cd /d "%~dp0"
echo ===================================================
echo              X2CRYPTO BOT - WINDOWS
echo ===================================================
echo.

:: ── Detecter Python ──────────────────────────────────
set "PYTHON_CMD="
where py >nul 2>&1 && set "PYTHON_CMD=py -3"
if not defined PYTHON_CMD (
    where python >nul 2>&1 && set "PYTHON_CMD=python"
)
if not defined PYTHON_CMD (
    echo [!] Python 3 est introuvable.
    echo     Installez Python 3 depuis https://www.python.org/downloads/
    echo     puis relancez ce script.
    echo.
    pause
    exit /b 1
)

:: ── Mise a jour automatique via Git ──────────────────
if exist .git (
    where git >nul 2>&1
    if errorlevel 1 (
        echo [!] Git est introuvable : mise a jour ignoree.
    ) else (
        echo [i] Verification de la mise a jour GitHub...
        git fetch origin >nul 2>&1
        if errorlevel 1 (
            echo [!] Impossible de contacter GitHub. Lancement avec la version locale.
        ) else (
            git reset --hard origin/master >nul 2>&1
            if errorlevel 1 (
                echo [!] Mise a jour impossible. Lancement avec la version locale.
            ) else (
                echo [+] Bot mis a jour depuis GitHub avec succes.
            )
        )
        echo.
    )
)

:: ── Lancement du bot ─────────────────────────────────
if exist x2crypto_runner.py (
    %PYTHON_CMD% x2crypto_runner.py %*
) else (
    %PYTHON_CMD% x2crypto_bot.py %*
)

echo.
echo Pressez une touche pour fermer...
pause >nul
