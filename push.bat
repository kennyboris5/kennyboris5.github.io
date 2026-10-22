@echo off
setlocal
cd /d "%~dp0"

echo ===================================================
echo  VuePress Resume - Push to GitHub
echo ===================================================
echo.
echo Repo: linuschao.github.io   (user page, must be Public)
echo Site: https://linuschao.github.io
echo.

where git >nul 2>&1
if errorlevel 1 (
  echo [ERROR] git not found in PATH. Install Git for Windows first.
  pause
  exit /b 1
)

echo [1/2] Syncing remote refs ...
git fetch origin
echo.

echo [2/2] Pushing main ...
git push origin main
if errorlevel 1 (
  echo.
  echo [WARN] Normal push failed, retrying with --force ...
  git push --force origin main
  if errorlevel 1 (
    echo.
    echo [ERROR] Push failed. Common causes:
    echo   1. Repo "linuschao.github.io" not created yet ^(must be Public^)
    echo   2. Not signed in: credential popup will ask; or enter
    echo      username = linuschao, password = your PAT
    echo      ^(PAT needs scopes: repo + workflow^)
    echo   3. Behind a proxy: run  set HTTPS_PROXY=host:port  first
    echo   4. Network blocked: check you are online / VPN is off
    echo.
    pause
    exit /b 1
  )
)

echo.
echo [OK] Pushed. GitHub Actions builds and deploys in ~1-2 min.
echo      Site: https://linuschao.github.io
echo      Repo Settings - Pages - Source: GitHub Actions
echo.
pause
