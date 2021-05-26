#!/bin/bash
cat $1 | jq -r '.results[] | [.url,.status] | @csv' | awk -v FS="," 'BEGIN{print "PATH\t\t\t\t\t\tSTATUS";print"==================================================================="}{printf "%s\t\t\t%s%s",$1,$2,ORS}'
