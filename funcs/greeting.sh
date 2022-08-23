#!/usr/bin/bash
# File: greeting.sh
source nice.sh

for i in {1..5}
do
	echo "Enter a name"
	read name
	nice $name
done
