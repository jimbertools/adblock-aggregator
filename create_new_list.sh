#/bin/bash

curl -v --silent https://badmojr.github.io/1Hosts/Pro/adblock.txt 2>&1 | grep "||" | cut -c 3- | sed 's/\^//' >adblock.txt
