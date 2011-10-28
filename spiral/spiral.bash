#!/bin/bash
export dir_script=$( cd "$( dirname "$0" )" && pwd );

dir=`pwd`;
dir_out="$dir/spiral_out";
ignore_list=(spiral spiral_out)

if [[ -d $dir_out ]]
	then
		rm -r $dir_out;
	fi
mkdir $dir_out;

files=$(find . -print );

for file in $files
do
	for ignore in $ignore_list
	do
		if [[ ! "$file" =~ ^./"$ignore" && ! "$file" == '.' ]]
		then
			if [[ -d $file ]]
			then
				mkdir $dir_out/$file;
			elif [[ -f $file ]]
			then
				echo $file;
				$dir_script/lirps.bash $file > $dir_out/$file
			fi
		fi
	done
done
