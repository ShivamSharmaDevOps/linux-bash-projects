  1  #!/bin/bash
     2  while true
     3  do
     4  echo "======== User Report Generator ========"
     5  echo "1. Total Users"
     6  echo "2. Users With Bash Shell"
     7  echo "3. Logged-in Users"
     8  echo "4. Save Reports"
     9  echo "5. Exit"
    10  read choice
    11  case "$choice" in
    12  1) wc -l /etc/passwd ;;
    13  2) cat /etc/passwd | grep bash ;;
    14  3) who ;;
    15  4) today=$(date +%F)
    16  echo "======== Users Report Generator ========" >> users_report_$today.txt
    17  echo "Total Users: " >> users_report_$today.txt
    18  wc -l /etc/passwd >> users_report_$today.txt
    19  echo "Users With Bash Shell: " >> users_report_$today.txt
    20  cat /etc/passwd | grep bash >> users_report_$today.txt
    21  echo "Logged-in Users:" >> users_report_$today.txt
    22  who >> users_report_$today.txt ;;
    23  5) echo "Exiting...."
    24  break ;;
    25  *) echo "Invalid Input" ;;
    26  esac
    27  done