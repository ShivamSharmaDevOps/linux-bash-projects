#!/bin/bash
while true
do
echo "======== Log Analyzer Tool ========"
echo "1. View Log Files"
echo "2. Count Lines"
echo "3. Count Words"
echo "4. Search Keywords"
echo "5. Show Last 10 Lines"
echo "6. Show First 10 Lines"
echo "7. Exit"
read choice
case "$choice" in
1) read -p "Enter File Name: " file
cat "$file" ;;
2) read -p "Enter File Name: " file
wc -l "$file" ;;
3) read -p "Enter File Name: " file
wc -w "$file" ;;
4) read -p "Enter File Name: " file
read -p "Enter Keyword: " keyword
grep "$keyword" "$file" ;;
5) read -p "Enter File Name: " file
tail -10 "$file" ;;
6) read -p "Enter File Name: " file
head -10 "$file" ;;
7) echo "Exiting....."
break ;;
*) echo "Invalid Input" ;;
esac
done