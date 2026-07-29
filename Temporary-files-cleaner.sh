#!/bin/bash
while true
do
echo "======== Temporary Files Cleaner ========"
echo "1. Show Temporary Files"
echo "2. Count Temporary Files"
echo "3. Delete Files Older Than 7 Days"
echo "4. Save Cleanup Reports"
echo "5. Exit"
read choice
case "$choice" in
1) find test-temp-folder -type f 2> /dev/null ;;
2) find test-temp-folder -type f 2> /dev/null | wc -l ;;
3) find test-temp-folder -type f -mtime +7 -delete ;;
4) mkdir -p Cleanup_logs
today=$(date +%F)
path=Cleanup_logs/logs_$today.txt
echo "===== Cleanup Report =====" >> "$path"
echo "Temporay Files: " >> "$path"
find test-temp-folder -type f 2> /dev/null >> "$path"
echo "Temporay Files Count: " >> "$path"
find test-temp-folder -type f 2> /dev/null | wc -l >> "$path"
echo "Files Older Than 7 Days: " >> "$path"
find test-temp-folder -type f -mtime +7 >> "$path"
echo "Cleanup Records Has Been Saved...." ;;
5) echo "Exiting..."
break ;;
*) echo "Invalid Input" ;;
esac
done