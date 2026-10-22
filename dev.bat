@echo off
setlocal
cd /d "%~dp0"

echo ===================================================
echo  VuePress Local Preview
echo ===================================================
echo.

where node >nul 2>&1
if errorlevel 1 (
  echo [ERROR] Node.js not found in PATH.
  echo Install Node.js 22.18 or newer: https://nodejs.org/
  pause
  exit /b 1
)

echo Node version:
node -v
echo.
echo NOTE: vuepress requires Node ^>= 22.18.0. If your version is lower,
echo       install Node 22+ first or the dev server will fail.
echo.

if not exist node_modules (
  echo ===================================================
  echo  First run: installing dependencies ^(may take minutes^)
  echo ===================================================
  call npm install
  if errorlevel 1 (
    echo.
    echo [ERROR] npm install failed. See messages above.
    echo If it is slow or times out in China, try:
    echo   npm install --registry=https://registry.npmmirror.com
    pause
    exit /b 1
  )
)

echo.
echo ===================================================
echo  Starting dev server...
echo  Open in browser:  http://localhost:8080
echo  Edit README.md or .vuepress\config.ts -> hot reload.
echo  Press Ctrl+C to stop.
echo ===================================================
echo.
call npm run dev

echo.
echo Dev server stopped.
pause
