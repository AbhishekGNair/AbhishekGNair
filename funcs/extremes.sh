#!/usr/bin/bash

extremes() {
	max=$1
	min=$1

	for i in $@
	do
		if [[ $i -gt $max ]]
		then
			let max=$i
		fi
		if [[ $i -lt $min ]]
		then
			let min=$i
		fi
	done

	echo "Max: $max"
	echo "Min: $min"
}
