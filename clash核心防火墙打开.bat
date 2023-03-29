@echo off
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c pushd ""%~dp0"" && ""%~s0"" ::","","runas",1)(window.close)&&exit
echo "-------------------------------------------"
echo "接下来将直接运行clash核心，请保持tun模式开启"
echo "核心将请求windows防火墙，请点击允许"
echo "允许后请自行关闭clash核心"
echo "-------------------------------------------"
.\clash.exe -d .\resources\ -f .\config.yaml
