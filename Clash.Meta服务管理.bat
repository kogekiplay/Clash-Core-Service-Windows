@echo off
echo "-------------------------------------------"
echo "请选择你要执行的操作："
echo "1. 安装并启动Clash Meta服务"
echo "2. 停止并卸载Clash Meta服务"
echo "3. 重启Clash Meta服务"
echo "-------------------------------------------"
echo.
echo.
set /p num=请选择要执行的操作:
if "%num%"=="1" (
	echo "-------------------------------------------"
	echo "安装中..."
	echo "-------------------------------------------"
	.\WinSW.exe install .\Clash-meta.xml
	.\WinSW.exe start .\Clash-meta.xml
	echo.
	echo.
	echo "安装成功！请自行查看log输出是否正确"
	echo.
	timeout /t 2
)	else if "%num%"=="2" (
		echo "-------------------------------------------"
		echo "卸载中..."
		echo "-------------------------------------------"
		.\WinSW.exe stop .\Clash-meta.xml
		.\WinSW.exe uninstall .\Clash-meta.xml
		echo.
		echo.
		echo "卸载成功！请自行查看log输出是否正确"
		echo.
		timeout /t 2
)	else if "%num%"=="3" (
		echo "-------------------------------------------"
		echo "重启Clash Meta核心"
		echo "-------------------------------------------"
		.\WinSW.exe restart .\Clash-meta.xml
		echo.
		timeout /t 2
)	else (
		echo "-------------------------------------------"
		echo "无效输入！脚本将自行退出！"
		echo "-------------------------------------------"
		timeout /t 2
)