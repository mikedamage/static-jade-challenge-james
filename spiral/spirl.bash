#!/bin/bash
# EXPORTED FROM TOP LEVEL $dir_script;
while (("$#"))
	do
		if [[ -f $1 ]]
			then
			echo $1;
			gawk -f $dir_script'/spirl.awk' $1;
		fi
			shift;
	done
