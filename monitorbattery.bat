@echo off
set cnt=6
cls
:start
	echo Monitor battery using battery report
	move battery-report.html battery-report%cnt%.html
	powercfg /batteryreport
	set /a cnt=cnt+1
	ping 127.0.0.1 -n 600 > nul
goto start
