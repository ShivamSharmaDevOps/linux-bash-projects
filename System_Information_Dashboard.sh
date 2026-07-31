#!/bin/bash
while true
do
echo "========= System Information  Dashboard "
echo "1. Show System Hostname"
echo "2. Show Operating System Details"
echo "3. Show Kernel Information"
echo "4. Show CPU Information"
echo "5. Show Memory Information"
echo "6. Save System Report"
echo "7. Exit"
read choice
case "$choice" in
1) hostname ;;
2) cat /etc/os-release ;;
3) uname -a ;;
4) lscpu ;;
5) free -h ;;
6) today=$(date +%F)
file="system_report_$today.txt"
echo "System Report Of $today:" >> "$file"
echo "Hostname:" >> "$file"
hostname >> "$file"
echo "Operating System Details:" >> "$file"
cat /etc/os-release >> "$file"
echo "Kernel Information:" >> "$file"
uname -a >> "$file"
echo "CPU information:" >> "$file"
lscpu >> "$file"
echo "Memory Info:" >> "$file"
free -h >> "$file"
echo "System Report Has Been Saved..." ;;
7) echo "Exiting...."
break ;;
*) echo "Invalid Input" ;;
esac
done