#!/usr/bin/gawk -f
BEGIN{
options=options?options:" -o {pretty:true}";
}

{
#/<!-- @(jade) (.*) -->/
if(match($0, /<!--[:space:]{0,}@spiral[:space:]cmd="(.+)"[:space:]file="(.+)"[:space:]opts="(.+)"[:space:]{0,}-->/, a)){

	print;
	while(( "cat "a[2] " | "a[1]" '"a[3]"' " | getline result) > 0){
		print result;
	}
	close(cmd)
} else{ print; }
}
