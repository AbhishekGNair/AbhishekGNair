#!/usr/bin/bash
IFS=';' read -ra vector <"$file"
	min=${vector[0]}
	max=${vector[0]}
	for i in "${vector[@]}"
	do
		(( i < min )) && min=$i
		(( i > max )) && max=$i
	done
	echo "Min is $min, Max is $max"
