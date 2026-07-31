#!/bin/bash
while true
do
echo "======== Network Connectivity Checker ========"
echo "1. Ping a Website or IP"
echo "2. Check DNS Resolution"
echo "3. Show System IP Address"
echo "4. Show Network Interface Details"
echo "5. Save Network Report"
echo "6. Exit"
read choice
case "$choice" in
1) read -p "Enter Website name or IP: " source
ping -c 4 "$source" ;;
2) read -p "Enter Webiste name: " website
getent hosts "$website" ;;
3) hostname -I ;;
4) ip addr ;;
5) today=$(date +%F)
file="network_report_$today.txt"
echo "Network Report of: $today " >> "$file"
echo "Ping Webiste or IP: " >> "$file"
ping -c 4 "$source" >> "$file"
echo "DNS Resolution: " >> "$file"
getent hosts "$website" >> "$file"
echo "System IP: " >> "$file"
hostname -I >> "$file"
echo "Network Interface Details: " >> "$file"
ip addr >> "$file"
echo "Network Reports Has Been Saved..." ;;
6) echo "Exiting...."
break ;;
*) echo "Invalid Input" ;;
esac
done