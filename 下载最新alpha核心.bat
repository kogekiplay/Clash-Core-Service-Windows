@echo off
echo "-------------------------------------------"
echo "下载最新alpha核心到当前目录并重命名为clash.zip"
echo "自行解压并替换clash.exe"
echo "-------------------------------------------"
timeout /nobreak /t 2
for /F "tokens=2*" %%u in ('curl -s https://api.github.com/repos/MetaCubeX/Clash.Meta/releases/tags/Prerelease-Alpha ^| findstr ^/c:"download/Prerelease-Alpha/clash.meta-windows-amd64-alpha"') do (set url=%%u)
echo %url%
curl -L -o ./clash.zip %url%
echo .
echo "下载完成"
timeout /t 2