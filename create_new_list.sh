#/bin/bash

# curl --silent https://badmojr.github.io/1Hosts/Pro/adblock.txt 2>&1 | grep "||" | sed 's/\^//' | sed 's/\./\\./g' | sed 's/||/^.*/' >adblock.txt
curl --silent https://badmojr.github.io/1Hosts/Pro/adblock.txt 2>&1 | grep "||" | sed 's/\^//' | sed 's/||//' >adblock.txt
sed -i '/advertising-module.api.dpgmedia.cloud/d' adblock.txt
# cat adblock.txt.1 2>&1 | grep "||" | sed 's/\^//' | sed 's/||//' >adblock.txt
