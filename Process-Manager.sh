#!/bin/bash
while true
do
echo "======== Process Manager ========"
echo "1. Show Running Processes"
echo "2. Search Process by Name"
echo "3. Check Process Details by PID"
echo "4. Monitor Process Live"
echo "5. Stop Process by PID"
echo "6. Stop process by Name"
echo "7. Exit"
read choice
case "$choice" in
1) ps aux | head  ;;
2) read -p "Enter Process Name: " process
ps aux | grep "$process" ;;
3) read -p "Enter Process PID: " pid
ps -p "$pid" ;;
4) top ;;
5) read -p "Enter Process PID: " pid
if kill "$pid"; then
echo "Process Has Been Terminated..."
else
echo "Invalid Process ID"
fi ;;
6) read -p "Enter Process Name: " process
if pkill "$process"; then
echo "Process Has Been Terminated..."
else
echo "Invalid Process Name"
fi ;;
7) echo "Exiting..."
break ;;
*) echo "Invalid Input" ;;
esac
done