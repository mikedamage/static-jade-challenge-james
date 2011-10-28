{
if(match($0, /<!--[[:space:]]*@spiral[[:space:]]cmd="(.+)"[[:space:]]file="(.+)"[[:space:]]opts="(.*)"[[:space:]]*-->/, a)){
	while(( "cat "a[2] " | "a[1] " "a[3]" " | getline result) > 0){
		print result;
	}
	close(cmd)
}else{ print; }
}
