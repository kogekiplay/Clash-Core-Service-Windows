@echo off
echo "-------------------------------------------"
echo "开始下载配置文件并重命名为config.yaml"
echo "-------------------------------------------"
echo.
set /p url=请输入你的订阅链接：
echo %url%
curl -H "User-Agent:ClashForWindows/0.20.19" -o config.yaml %url%
echo.
echo "-------------------------------------------"
echo "更新完成！"
echo "-------------------------------------------"
echo.
timeout /t 2