@echo off
echo "-------------------------------------------"
echo "��ʼ���������ļ���������Ϊconfig.yaml"
echo "-------------------------------------------"
echo.
set /p url=��������Ķ������ӣ�
echo %url%
curl -H "User-Agent:ClashForWindows/0.20.19" -o config.yaml %url%
echo.
echo "-------------------------------------------"
echo "������ɣ�"
echo "-------------------------------------------"
echo.
timeout /t 2