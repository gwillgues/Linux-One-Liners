# Linux-One-Liners
Useful 1-line Linux Shell Scripts

# Detect Kernel Process Masquerading
for procID in $(ps aux | grep "\["  | awk -F' ' '{print $2}');do a=$(wc -c /proc/$procID/maps | awk -F' ' '{print $1}');if [[ $a -gt 0 ]]; then echo $procID; fi;  done

# Scan TCP ports with bash
for i in {1..1024};do (echo </dev/tcp/192.168.0.1/$i) &>/dev/null && echo -e "$i -- OPEN";done

# Get raw argv[] arguments from /proc/pid/maps (which may not be available using ps)
hexdump -v -e '/1 "%02X "' /proc/6801/cmdline  | sed 's/00/0a/g' | xxd -r -p
