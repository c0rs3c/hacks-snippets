#!/bin/bash
if [ -f ./found-links.txt ];then
	echo "file exists";
	rm ./found-links.txt
fi
while read url;do
	echo $url | tee -a ./found-links.txt;
	linkfinder.py -i $url -o cli | tee -a ./found-links.txt
done < $1

