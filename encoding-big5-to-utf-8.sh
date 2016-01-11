#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
	iconv -f big5-2003 -t utf-8 "$line" > temp
	sed -i '' s/big5/utf-8/ temp
	mv -f temp "$line"
done < "$1"