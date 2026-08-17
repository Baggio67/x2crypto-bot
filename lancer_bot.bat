@echo off
title X2CRYPTO BOT - LANCEMENT
chcp 65001 >nul
cd /d "%~dp0"
echo ===================================================
echo              X2CRYPTO BOT - WINDOWS
echo ===================================================
echo.
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
if exist .git (
    where git >nul 2>&1
    if errorlevel 1 (
        echo [!] Git est introuvable : mise a jour ignoree.
    ) else (
        echo [i] Mise a jour du bot...
        git pull --ff-only
        if errorlevel 1 (
            echo [!] Mise a jour automatique impossible.
            echo     Si le depot a ete reinitialise, fermez ce bot puis executez :
            echo     git stash push -u -m "sauvegarde avant mise a jour"
            echo     git fetch origin
            echo     git reset --hard origin/master
            echo     git stash pop
            echo.
            pause
            exit /b 1
        )
        echo.
    )
)
if exist x2crypto_runner.py (
    %PYTHON_CMD% x2crypto_runner.py %*
) else (
    %PYTHON_CMD% x2crypto_bot.py %*
)
echo.
echo Pressez une touche pour fermer...
pause >nul
