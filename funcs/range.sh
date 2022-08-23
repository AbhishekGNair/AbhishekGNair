#!/usr/bin/bash

function range {
	eval seq=({0..$1})
	echo ${seq[*]}
}

