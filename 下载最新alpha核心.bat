@echo off
echo "-------------------------------------------"
echo "��������alpha���ĵ���ǰĿ¼��������Ϊclash.zip"
echo "���н�ѹ���滻clash.exe"
echo "-------------------------------------------"
timeout /nobreak /t 2
for /F "tokens=2*" %%u in ('curl -s https://api.github.com/repos/MetaCubeX/Clash.Meta/releases/tags/Prerelease-Alpha ^| findstr ^/c:"download/Prerelease-Alpha/clash.meta-windows-amd64-alpha"') do (set url=%%u)
echo %url%
curl -L -o ./clash.zip %url%
echo .
echo "�������"
timeout /t 2