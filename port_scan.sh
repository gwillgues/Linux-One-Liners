for i in {1..1024};do (echo </dev/tcp/192.168.0.1/$i) &>/dev/null && echo -e "$i -- OPEN";done
