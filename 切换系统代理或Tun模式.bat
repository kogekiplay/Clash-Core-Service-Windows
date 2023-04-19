@echo off
for /f "tokens=1,2,* " %%i in ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable ^| find /i "ProxyEnable"') do (set /A ProxyEnableValue=%%k)

if %ProxyEnableValue% equ 0 (
    echo 系统代理目前处于关闭状态，正在开启代理并关闭tun模式，请稍候...
    echo=
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f >nul 2>nul
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "127.0.0.1:7890" /f >nul 2>nul
    curl http://127.0.0.1:9090/configs -X PATCH -d "{    \"tun\": {        \"enable\": false    }}"
    echo 系统代理已开启，tun模式已关闭
) else if %ProxyEnableValue% equ 1 (
    echo 系统代理目前处于开启状态，正在关闭代理并开启tun模式，请稍候...
    echo=
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f >nul 2>nul
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "" /f >nul 2>nul
    curl http://127.0.0.1:9090/configs -X PATCH -d "{    \"tun\": {        \"enable\": true    }}"
    echo 系统代理已关闭，tun模式已开启
)
timeout /nobreak /t 2