#!/usr/bin/bash

function plier {
	local product=1

	for i in $@
	do
		let product=$product*i
	done

	echo $product
}
