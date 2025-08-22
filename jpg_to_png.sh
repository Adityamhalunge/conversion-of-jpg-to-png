#!/bin/bash

if [ $# -eq 0 ]
then
	echo "usage : $0 [file-1][file-2][file-3]...[file-n]"
	exit
fi

for i in "$@"
do
	if [ -f "$i" ]
	then
		file_name=$(echo "$i" | sed 's/\..*//')
		convert "$i" "${file_name}.png"
	else
		echo "ERROR :$i is not a regular file"
	fi
done
echo "[+] file conversion completed"

