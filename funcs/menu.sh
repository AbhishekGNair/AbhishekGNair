#!/usr/bin/bash
# menu.sh: Uses case to offer 5-item menu

echo "MENU"
echo "1. List of files"
echo "2. Processes of user"
echo "3. Today's Date"
echo "4. Users of Systems"
echo "5. Quit to UNIX"
echo "Enter your option"

read choice
case "$choice" in
	1) ls -l ;;
	2) ps -f ;;
	3) date  ;;
	4) who ;;
	5) exit ;;
	*) echo "Invalid Option"
esac
