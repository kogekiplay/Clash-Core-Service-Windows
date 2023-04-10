@echo off
echo "-------------------------------------------"
echo "下载最新alpha核心到当前目录并重命名为clash.exe"
echo "即将停止并下载clash.meta核心"
echo "-------------------------------------------"
timeout /nobreak /t 2
.\WinSW.exe stop .\Clash-meta.xml
curl -o clash.exe https://ghproxy.wushidi.gay/https://github.com/DustinWin/Clash-Files/releases/download/latest/clash-meta.exe
echo .
echo "下载完成"
echo "-------------------------------------------"
echo "即将启动clash核心"
echo "-------------------------------------------"
.\WinSW.exe start .\Clash-meta.xml
timeout /t 2