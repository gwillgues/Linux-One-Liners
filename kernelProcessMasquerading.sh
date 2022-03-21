for procID in $(ps aux | grep "\["  | awk -F' ' '{print $2}');do a=$(wc -c /proc/$procID/maps | awk -F' ' '{print $1}');if [[ $a -gt 0 ]]; then echo $procID; fi;  done
