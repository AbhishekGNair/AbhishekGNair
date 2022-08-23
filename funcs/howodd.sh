#!/usr/bin/bash

source nevens.sh

function howodd {
	echo "$(nevens) / $#" | bc
}
