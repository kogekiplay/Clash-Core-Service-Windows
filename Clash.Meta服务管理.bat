@echo off
echo "-------------------------------------------"
echo "��ѡ����Ҫִ�еĲ�����"
echo "1. ��װ������Clash Meta����"
echo "2. ֹͣ��ж��Clash Meta����"
echo "3. ����Clash Meta����"
echo "-------------------------------------------"
echo.
echo.
set /p num=��ѡ��Ҫִ�еĲ���:
if "%num%"=="1" (
	echo "-------------------------------------------"
	echo "��װ��..."
	echo "-------------------------------------------"
	.\WinSW.exe install .\Clash-meta.xml
	.\WinSW.exe start .\Clash-meta.xml
	echo.
	echo.
	echo "��װ�ɹ��������в鿴log����Ƿ���ȷ"
	echo.
	timeout /t 2
)	else if "%num%"=="2" (
		echo "-------------------------------------------"
		echo "ж����..."
		echo "-------------------------------------------"
		.\WinSW.exe stop .\Clash-meta.xml
		.\WinSW.exe uninstall .\Clash-meta.xml
		echo.
		echo.
		echo "ж�سɹ��������в鿴log����Ƿ���ȷ"
		echo.
		timeout /t 2
)	else if "%num%"=="3" (
		echo "-------------------------------------------"
		echo "����Clash Meta����"
		echo "-------------------------------------------"
		.\WinSW.exe restart .\Clash-meta.xml
		echo.
		timeout /t 2
)	else (
		echo "-------------------------------------------"
		echo "��Ч���룡�ű��������˳���"
		echo "-------------------------------------------"
		timeout /t 2
)