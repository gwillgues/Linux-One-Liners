#!/bin/bash
#Check for IP addresses in an IP Range that exist in Wikipedia's Page Edit History
for i in {128..191};do for j in {0..255}; do a=$(curl --silent https://en.wikipedia.org/wiki/Special:Contributions/198.81.$i.$j | grep -i diff); if [ "$(echo $a | wc -c)" -gt "1" ]; then echo "198.81.$i.$j"; fi; done;done
