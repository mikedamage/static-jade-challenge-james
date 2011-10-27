#!/bin/bash
dir=`pwd`;
dir_out="$dir/"'spiral_out';

if [[ -d $dir_out ]]
	then
		rm -r $dir_out;
	fi
mkdir $dir_out;

for file in $(ls | grep -v 'jade' | grep -v 'spiral_out');

	do
		cp -r $file $dir_out;
		#./spirl.awk
	done 
