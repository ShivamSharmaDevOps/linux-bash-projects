#!/bin/bash
read -p "Enter Service Name: " service
while true
do
echo "======== Linux Service Manger ========"
echo "1. Check Service Status"
echo "2. Check if Service is Active"
echo "3. Check if Service is Enabled"
echo "4. Start a Service"
echo "5. Stop a Service"
echo "6. Restart a Service"
echo "7. View Service Logs"
echo "8. Monitor Service logs Live"
echo "9. Exit"
read choice
case "$choice" in
1) systemctl status "$service" ;;
2) systemctl is-active "$service" ;;
3) systemctl is-enabled "$service" ;;
4) systemctl start "$service" ;;
5) systemctl stop "$service"
echo "Service has been stopped..." ;;
6) systemctl restart "$service"
echo "Service has been restarted..." ;;
7) journalctl -u "$service" ;;
8) journalctl -u "$service" -f ;;
9) echo "Exiting..."
break ;;
*) echo "Invalid Input" ;;
esac
done