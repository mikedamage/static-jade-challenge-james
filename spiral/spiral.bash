#!/bin/bash

export dir_script=$( cd "$( dirname "$0" )" && pwd );

dir=`pwd`;
dir_out="$dir/"'spiral_out';

if [[ -d $dir_out ]]
	then
		rm -r $dir_out;
	fi
mkdir $dir_out;

for file in $(ls | grep -v 'spiral' | grep -v 'spiral_out');
	do
		cp -r $file $dir_out;
	done

find $dir_out -print0 -type f | xargs -0 $dir_script/spirl.bash
