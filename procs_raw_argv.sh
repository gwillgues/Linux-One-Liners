#Dump raw argv[] arguments from processes, not possible with ps 
hexdump -v -e '/1 "%02X "' /proc/6801/cmdline  | sed 's/00/0a/g' | xxd -r -p
