#!/bin/bash

echo "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
echo "░░░░▄▄▄░░▄▄░░▄▄▄▄░░░▄▄▄░░░▄░░░░▄▄░░░░░░░░░░▄░░░░░"
echo "░░██░░▀░▐░░░░░░▌░░░▐░░░░█░▌░░░▐▀▀░█▀▀▀░░░░░█░░░░░"
echo "░░▌░░░░░▐░░░░░░▌░░░░█▄░░▐░█░░░▐░░░▌░░░░░░░░▐░░░░░"
echo "░▐░░░▄▄░░█▀▀░░▐░░░░░▌░░░▐░▐░░░▐▀░░█▄▄░░░▄░░▐░░█▌░"
echo "░▐░░░░░▌░▌░░░░▐░░░░▐░░░░▐░▐░░░▐░░░░░░▌░░░█▄▐░█░░░"
echo "░░█▄▄▄█░░█▄▄░░▐░░░░▐░░░░▐░▐▄▄▄▐▄▄░▄▄▄▌░░░░░█▀░░░░"
echo "░░░░░ By 71460-4-F  2023 ░░░░░░░░░░░░░░░░░░░░░░░░"
echo "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
if [ $# -ne 2 ]; then
  echo "Usage: $0 <URI> <file type>"
  exit 1
fi
URI=$1
file_type=$2
user_agent='Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0'
echo "Running. . ."
wget --random-wait --user-agent="$user_agent" -q -r -nv -np -nd -nc -A $file_type $URI
rm -rf `find -iname "*.tmp"`
clear
echo "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
echo "░░░░▄▄▄░░▄▄░░▄▄▄▄░░░▄▄▄░░░▄░░░░▄▄░░░░░░░░░░▄░░░░░"
echo "░░██░░▀░▐░░░░░░▌░░░▐░░░░█░▌░░░▐▀▀░█▀▀▀░░░░░█░░░░░"
echo "░░▌░░░░░▐░░░░░░▌░░░░█▄░░▐░█░░░▐░░░▌░░░░░░░░▐░░░░░"
echo "░▐░░░▄▄░░█▀▀░░▐░░░░░▌░░░▐░▐░░░▐▀░░█▄▄░░░▄░░▐░░█▌░"
echo "░▐░░░░░▌░▌░░░░▐░░░░▐░░░░▐░▐░░░▐░░░░░░▌░░░█▄▐░█░░░"
echo "░░█▄▄▄█░░█▄▄░░▐░░░░▐░░░░▐░▐▄▄▄▐▄▄░▄▄▄▌░░░░░█▀░░░░"
echo "░░░░░ By 71460-4-F  2023 ░░░░░░░░░░░░░░░░░░░░░░░░"
echo "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
echo "Finished !!!"
echo 'Files saved in: '
pwd
sleep 2
echo "Files list: "
ls
