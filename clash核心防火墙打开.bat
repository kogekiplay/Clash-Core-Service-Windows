@echo off
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c pushd ""%~dp0"" && ""%~s0"" ::","","runas",1)(window.close)&&exit
echo "-------------------------------------------"
echo "��������ֱ������clash���ģ��뱣��tunģʽ����"
echo "���Ľ�����windows����ǽ����������"
echo "����������йر�clash����"
echo "-------------------------------------------"
.\clash.exe -d .\resources\ -f .\config.yaml
