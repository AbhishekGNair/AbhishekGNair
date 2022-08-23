#!/usr/bin/bash

function fib {
	counter=2
	first=0
	second=1
	series=($first $second)
	while [[ $counter -lt $1 ]]
	do
		let term=$first+$second
		series+=($term)
		let first=$second
		let second=$term
		let counter=$counter+1
	done
	echo ${series[*]}
}
