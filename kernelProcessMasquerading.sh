#Gets a list of processes which look like kernel processes, and looks for any maps open. If the kernel process has maps in /proc/$procID/maps, then it is suspicious.
#Some processes like SSH, and other legitimate process threads will show up, just investigate and make sure they dont look like "kernel threads".
#If a process ID that looks like a kernel thread pops up, this indicates malware.

for procID in $(ps aux | grep "\["  | awk -F' ' '{print $2}');do a=$(wc -c /proc/$procID/maps | awk -F' ' '{print $1}');if [[ $a -gt 0 ]]; then echo $procID; fi;  done
