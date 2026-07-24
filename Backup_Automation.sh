#!/bin/bash
while true
do
echo "======== Backup Automation Tool ========"
echo "1. Create Backup"
echo "2. View Backup Files"
echo "3. Delete Backup"
echo "4. Exit"
read choice
case "$choice" in
1) read -p "Enter Backup Folder name:" folder
mkdir -p backups
today=$(date +%F)
tar -czvf backups/backup_$today.tar.gz "$folder"
echo "Backup Created Successfully" ;;
2) ls -lh backups ;;
3) read -p "Enter Backup file name:" file
rm backups/"$file"
echo "Backup file has been deleted" ;;
4) echo "Exiting...."
break ;;
*) echo "Inavlid Input" ;;
esac
done