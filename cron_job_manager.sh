 1  #!/bin/bash
     2  while true
     3  do
     4  echo "======== Cron Job Manager ========"
     5  echo "1. Show Current Cron Jobs"
     6  echo "2. Add a New Cron Job"
     7  echo "3. Check Cron Service Status"
     8  echo "4. Remove All Cron Job"
     9  echo "5. Exit"
    10  read choice
    11  case "$choice" in
    12  1) crontab -l ;;
    13  2) read -p "Enter Cron Schedule Time: " time
    14  read -p "Enter Command or Script Path: " command
    15  (crontab -l 2>/dev/null; echo "$time $command") | crontab -
    16  echo "Cron Job has been scheduled" ;;
    17  3) systemctl status cron ;;
    18  4) read -p "Are you sure want to remove all current cron jobs? (yes/no): " response
    19  if [[ "$response" == "yes" ]]; then
    20  crontab -r
    21  echo "All cron jobs has been removed"
    22  else
    23  echo "Action has been cancelled"
    24  fi ;;
    25  5) echo "Exiting..."
    26  break ;;
    27  *) echo "Invalid Input" ;;
    28  esac
    29  done