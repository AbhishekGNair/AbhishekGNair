#!/usr/bin/bash
source isiteven.sh
function even_or_odd {
	echo "$1 % 2" | bc
}

# no_of_evens=0
nevens() {
	no_of_evens=0

	for i in $@
	do
		# Working: rem=$i%2
		rem=$(even_or_odd $i)
		if [[ $rem -eq 0 ]]
		then
			let no_of_evens=$no_of_evens+1
		fi
	done
	echo $no_of_evens
}

echo "The number of evens in the set: $(nevens $@)"
echo "Total number of elements in the set: $#"
echo "`nevens $@` / $#" | bc -l

