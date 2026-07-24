#!/bin/bash
while true
do
echo "========> User Oncaboarding <======="
echo "1. Add a new user"
echo "2. Set Password"
echo "3. Add a user to sudo group"
echo "4. check a user information"
echo "5. Lock a user"
echo "6. Unlock a user"
echo "7. Delete a user"
echo "8. Exit"
read choice
case "$choice" in
1) read -p "Enter user name:" uname
sudo useradd -m "$uname"
echo "User has been Created with Home Directory" ;;
2) read -p "Enter user name:" uname
sudo passwd "$uname"
echo "Password has been set for user $uname" ;;
3) read -p "Enter user name:" uname
sudo usermod -aG sudo "$uname"
echo "User $uname has been added to sudo group" ;;
4) read -p "enter username:" uname
id "$uname" ;;
5) read -p "enter username:" uname
sudo passwd -l "$uname"
echo "user $uname has been locked" ;;
6) read -p "enter username:" uname
sudo passwd -u "$uname"
echo "user $uname has been unlocked" ;;
7) read -p "enter username:" uname
sudo deluser -r "$uname"
echo "user $uname has been deleted from the records" ;;
8) echo "Exiting from menu..."
break ;;
*) echo "invalid choice" ;;
esac
done