@echo off
for /f "tokens=1,2,* " %%i in ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable ^| find /i "ProxyEnable"') do (set /A ProxyEnableValue=%%k)

if %ProxyEnableValue% equ 0 (
    echo ϵͳ����Ŀǰ���ڹر�״̬�����ڿ��������ر�tunģʽ�����Ժ�...
    echo=
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f >nul 2>nul
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "127.0.0.1:7890" /f >nul 2>nul
    curl http://127.0.0.1:9090/configs -X PATCH -d "{    \"tun\": {        \"enable\": false    }}"
    echo ϵͳ�����ѿ�����tunģʽ�ѹر�
) else if %ProxyEnableValue% equ 1 (
    echo ϵͳ����Ŀǰ���ڿ���״̬�����ڹرմ�������tunģʽ�����Ժ�...
    echo=
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f >nul 2>nul
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "" /f >nul 2>nul
    curl http://127.0.0.1:9090/configs -X PATCH -d "{    \"tun\": {        \"enable\": true    }}"
    echo ϵͳ�����ѹرգ�tunģʽ�ѿ���
)
timeout /nobreak /t 2