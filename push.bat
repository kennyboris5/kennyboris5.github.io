@echo off
REM ============================================================
REM  一键推送简历到 GitHub Pages
REM  使用前：先在 GitHub 网页建仓库，名称必须为 kennyboris5.github.io（Public）
REM  然后双击本文件即可。凭据管理器会弹窗登录（或用已缓存账号）。
REM  若提示输入密码：用户名 kennyboris5，密码填你的 PAT。
REM ============================================================
cd /d "%~dp0"
git push -u origin main
echo.
echo 推送结束。若上方出现 "Could not connect"，说明你本机也需走代理，
echo 请先在此窗口执行： set HTTPS_PROXY=地址:端口  然后再跑一次。
pause
