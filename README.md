# Linux-One-Liners
Useful 1-line Linux Shell Scripts

# Detect Kernel Process Masquerading
<code>for procID in $(ps aux | grep "\\["  | awk -F' ' '{print $2}');do a=$(wc -c /proc/$procID/maps | awk -F' ' '{print $1}');if [[ $a -gt 0 ]]; then echo $procID; fi;  done</code>

# Scan TCP ports with bash
<code>for i in {1..1024};do (echo </dev/tcp/192.168.0.1/$i) &>/dev/null && echo -e "$i -- OPEN";done</code>

# Get raw argv[] arguments from /proc/pid/maps (which may not be available using ps)
<code>hexdump -v -e '/1 "%02X "' /proc/6801/cmdline  | sed 's/00/0a/g' | xxd -r -p</code>

# Get Wikipedia Page Edit history for IPs in a specified IP range
<code>for i in {128..191};do for j in {0..255}; do a=$(curl --silent https://en.wikipedia.org/wiki/Special:Contributions/198.81.$i.$j | grep -i diff); if [ "$(echo $a | wc -c)" -gt "1" ]; then echo "198.81.$i.$j"; fi; done;done</code>
