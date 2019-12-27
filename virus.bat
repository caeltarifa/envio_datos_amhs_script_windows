@echo off
color 0E

mode con cols=50  lines=20

:bucle 
timeout /t 23 /nobreak 

set fecha_actual=%DATE%

set dia=%fecha_actual:~5,2%
set mes=%fecha_actual:~8,2%
set ano=%fecha_actual:~11,4%
set formato=%dia%%mes%%ano%
echo %fecha_actual%
echo %formato%
pscp -pw c1a2e3l4CAEL "C:\Program Files (x86)\THALES\IAT WINDOWS\Messages\%formato%\messages.table" root@212.115.109.148:/root/scripting/


goto bucle 
exit