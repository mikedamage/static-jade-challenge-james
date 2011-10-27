#!/usr/bin/gawk -f
BEGIN{
options=options?options:" -o {pretty:true}";
}

{
if(match($0, /<!-- @(jade) (.*) -->/, a)){
	print;
	while(( "cat "a[2]"."a[1] " | "a[1] options | getline result) > 0){
		print result;
	}
	close(cmd)
} else{ print; }
}
