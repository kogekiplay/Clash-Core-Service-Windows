# Clash-Core-Service-Windows
> 作者: Telegram [@kogeki_bot](https://t.me/kogeki_bot "@kogeki_bot")

> Gihub: [@kogekiplay](https://github.com/kogekiplay "@kogekiplay")

> Source: https://github.com/kogekiplay/Clash-Core-Service-Windows

利用[WinSw](https://github.com/winsw/winsw "WinSw")创建系统服务并自动启动，需要保证tun模式打开

如果报错，请安装curl

首先写好你的clash配置，重命名为config.yaml放到当前目录
或者打开更新配置文件.bat，输入订阅链接
然后打开Clash.Meta服务管理.bat根据提示操作

#### Tips:
Clash首次启动会下载相关资源文件到./resources
如果下载不动请配置好geox-url
我给出的例子已经配置好，所以不用动

./dashboard目录是在线面板，启动clash后打开http://127.0.0.1:9090/ui即可切换节点
