#!/bin/bash
 target=$1
 red="\e[31m"
 blink="\e[5m"
 green="\e[32m"
 yellow="\e[33m"
 right=$(printf '\xE2\x9C\x94')
 end="\e[0m"

api=$(cat .token)
shodan init $api > /dev/null
folder=$target-$(date '-I')
rm -rf output/$folder > /dev/null
mkdir -p output/$folder;cd output/$folder
mkdir IP_VULNS

shodan download $target.json.gz ssl:$target
echo "--------------------------------"
shodan parse --fields ip_str,port --separator ":" $target.json.gz > main.data
cd IP_VULNS;cat ../main.data|awk -F":" '{print $1}'|while read -r line;do shodan host -S $line > /dev/null;sleep 5;echo -n ">>";done
echo -e "\n"
gunzip *.gz 2> /dev/null
ls -1 | while read -r line; do
printf "[$right] IP:$end $green $(cat $line | jq -r ".ip_str" | sort -u)$end\n"
printf "[$right] ASN:$end $green $(cat $line | jq -r ".asn" | sort -u)$end\n"
printf "[$right] Ports:$end $green $(cat $line | jq -r ".port" | sort -u)$end\n"
printf "[$right] CVEs:$end $green $(cat $line | jq -r ".vulns | to_entries[] | .key" 2> /dev/null | sort -u)$end\n"
echo "----------------------"
done
