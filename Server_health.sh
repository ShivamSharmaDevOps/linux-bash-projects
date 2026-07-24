#!/bin/bash
while true
do
echo "======== Server Health Monitor tool ========"
echo "1. Check Disk Usage"
echo "2. Check Memory Usage"
echo "3. Check CPU Load"
echo "4. Show Logged-in Users"
echo "5. Show System Uptime"
echo "6. Show Running Services"
echo "7. Current Date and Time"
echo "8. Exit Menu"
read choice
case "$choice" in
1) df -h ;;
2) free -h ;;
3) top -bn1 | head -5 ;;
4) who ;;
5) uptime ;;
6) systemctl ;;
7) date ;;
8) echo "Exiting..."
break ;;
*) echo "Invalid Input"
esac
done