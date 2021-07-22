#/bin/bash
if [ -z "$1" ] && [ -z "$2" ]; then
    echo "usage: ./create_new_list.sh <path/to/file> /var/www/html/adblock.txt for production"
    exit
fi
path=$1
# curl --silent https://badmojr.github.io/1Hosts/Pro/adblock.txt 2>&1 | grep "||" | sed 's/\^//' | sed 's/\./\\./g' | sed 's/||/^.*/' >adblock.txt
curl --silent https://badmojr.github.io/1Hosts/Pro/adblock.txt 2>&1 | grep "||" | sed 's/\^//' | sed 's/||//' >$path
sed -i '/advertising-module.api.dpgmedia.cloud/d' $path
# cat adblock.txt.1 2>&1 | grep "||" | sed 's/\^//' | sed 's/||//' >adblock.txt
