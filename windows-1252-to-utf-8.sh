#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
	iconv -f windows-1252 -t utf-8 "$line" > temp
	sed -i '' s/windows-1252/utf-8/ temp
	mv -f temp "$line"
done < "$1"