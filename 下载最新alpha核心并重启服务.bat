@echo off
echo "-------------------------------------------"
echo "��������alpha���ĵ���ǰĿ¼��������Ϊclash.exe"
echo "����ֹͣ������clash.meta����"
echo "-------------------------------------------"
timeout /nobreak /t 2
.\WinSW.exe stop .\Clash-meta.xml
curl -o clash.exe https://ghproxy.wushidi.gay/https://github.com/DustinWin/Clash-Files/releases/download/latest/clash-meta.exe
echo .
echo "�������"
echo "-------------------------------------------"
echo "��������clash����"
echo "-------------------------------------------"
.\WinSW.exe start .\Clash-meta.xml
timeout /t 2