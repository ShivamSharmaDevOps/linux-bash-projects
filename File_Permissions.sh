#!/bin/bash
read -p "Enter File Name: " file
if [ ! -f "$file" ]; then
echo "File Not Found"
exit 1
fi
while true
do
echo "======== File Permission Manager ========"
echo "1. View File Permission"
echo "2. Change File Permission"
echo "3. Change File Group"
echo "4. Change File Ownership"
echo "5. Exit"
read choice
case "$choice" in
1) ls -l "$file" ;;
2) read -p "Enter File Permission (ex. 755): " permission
chmod "$permission" "$file"
echo "File Permission Has Been Updated" ;;
3) read -p "Enter Group Name: " group
chgrp "$group" "$file"
echo "Group Has Been Changed" ;;
4) read -p "Enter Owner Name: " owner
chown "$owner" "$file"
echo "File Owner Has Been Changed" ;;

5) echo "Exiting...."
break ;;
*) echo "Invalid Input" ;;
esac
done