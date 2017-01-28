@echo off
mkdir ".\colorama"
mkdir ".\defaults"
copy ".\source\header\*.py" ".\"
copy ".\source\ID\*.py" ".\"
copy ".\source\module\*.py" ".\"
copy ".\source\process\*.py" ".\"
copy ".\source\text\*.txt" ".\"
copy ".\source\WRECK\*.py" ".\"
copy ".\source\WRECK\colorama\*.py" ".\colorama\"
copy ".\source\WRECK\defaults\*.py" ".\defaults\"
echo Compiling Vexed Native Mod 1.168
timeout /t 2
python compile.py nodupe tag %1 %2 %3 %4 %5 %6 %7 %8 %9
rmdir /s /q ".\colorama"
rmdir /s /q ".\defaults" 
@del *.py
@del *.txt
echo Press any key to exit. . .
pause>nul
