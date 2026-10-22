@echo off
setlocal
cd /d "%~dp0"

echo ===================================================
echo  VuePress Resume - Push to GitHub
echo ===================================================
echo.
echo This script runs on YOUR machine (with internet).
echo Before running, create the repo on github.com:
echo   Name: kennyboris5.github.io   (must be Public)
echo.

where git >nul 2>&1
if errorlevel 1 (
  echo [ERROR] git not found in PATH. Install Git for Windows first.
  pause
  exit /b 1
)

REM NOTE: --force is REQUIRED this time only, because the commit
REM author history was rewritten locally to fix wrong attribution.
REM After this one push, future pushes can use normal "git push".
git push --force origin main
if errorlevel 1 (
  echo.
  echo [ERROR] Push failed. Common causes:
  echo   1. Repo "kennyboris5.github.io" not created yet (must be Public)
  echo   2. Not signed in: credential popup will ask; or enter
  echo      username = kennyboris5, password = your PAT
  echo   3. Behind a proxy: run  set HTTPS_PROXY=host:port  first
  echo   4. Local origin/main tracking is stale: run  git fetch origin
  echo      first, then re-run this script.
  echo.
  pause
  exit /b 1
)

echo.
echo [OK] Pushed. GitHub Actions builds and deploys in ~1-2 min.
echo      Site: https://kennyboris5.github.io   (zh /  en /en/)
echo      Repo Settings - Pages - Source: GitHub Actions
echo.
pause
