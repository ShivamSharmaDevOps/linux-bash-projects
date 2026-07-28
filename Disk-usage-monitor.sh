#!/bin/bash
while true
do
echo "======== Disk Usage Monitor ========"
echo "1. Show Disk Usage"
echo "2. Show Home Directory Size"
echo "3. Show Top 10 Largest Files"
echo "4. Save Report"
echo "5. Exit"
read choice
case "$choice" in
1) df -h ;;
2) du -sh /home ;;
3) find /home -type f -exec du -sh {} + | sort -rh | head -10 ;;
4) today=$(date +%F)
mkdir -p Reports
echo "======== Disk Usage Monitor ========" >> Reports/report_file_$today.txt
echo "Disk Usage: " >> Reports/report_file_$today.txt
df -h >> Reports/report_file_$today.txt
echo "Home Directory Size: " >> Reports/report_file_$today.txt
du -sh /home >> Reports/report_file_$today.txt
echo "Top 10 Largest File: " >>  Reports/report_file_$today.txt
find /home -type f -exec du -sh {} + | sort -rh | head -10 >> Reports/report_file_$today.txt
echo "Report Has Been Saved..." ;;
5) echo "Exiting..."
break ;;
*) echo "Invalid Input"
esac
done