@echo off
setlocal enabledelayedexpansion

REM ִ�� powercfg �����������浽��ʱ�ļ�
powercfg /devicequery wake_programmable > tmptmptmp.txt

REM ���ж�ȡ��ʱ�ļ������ݣ�����ÿ�н��д���
for /f "tokens=*" %%a in (tmptmptmp.txt) do (
  set "line=%%a"

  REM ��ÿ��ǰ���������ǰ׺�ͺ�׺
  set "line=powercfg /devicedisablewake "!line!""

  REM ִ�д���������
  !line!
)

REM ɾ����ʱ�ļ�
del tmptmptmp.txt

endlocal
pause