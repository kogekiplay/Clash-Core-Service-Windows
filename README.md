# Clash-Core-Service-Windows
> 作者: Telegram [@kogeki_bot](https://t.me/kogeki_bot "@kogeki_bot")

> Gihub: [@kogekiplay](https://github.com/kogekiplay "@kogekiplay")

> Source: https://github.com/kogekiplay/Clash-Core-Service-Windows

Demo:

<img width="202" alt="image" src="https://user-images.githubusercontent.com/46434871/233016224-198cf95d-23e6-4721-8f53-8eb17d150d5a.png">

下载链接：
https://github.com/kogekiplay/ClashMetaForWindows_Mini/releases

利用[WinSw](https://github.com/winsw/winsw "WinSw")创建系统服务并自动启动，需要保证tun模式打开

如果报错，请安装curl

1. 首先执行 `git clone --recursive https://github.com/kogekiplay/Clash-Core-Service-Windows`
2. 写好你的clash配置，重命名为config.yaml放到当前目录或者打开更新配置文件.bat，输入订阅链接
2. 在windows中tun模式需要通过防火墙，所以先打开clash核心防火墙打开.bat并允许
4. 打开Clash.Meta服务管理.bat根据提示操作

#### Tips:
Clash首次启动会下载相关资源文件到./resources
如果下载不动请配置好geox-url
我给出的例子已经配置好，所以不用动

./dashboard目录是在线面板，启动clash后打开 http://127.0.0.1:9090/ui即可切换节点

dashboard资源来自 https://github.com/kogekiplay/Yacd-meta/tree/gh-pages
