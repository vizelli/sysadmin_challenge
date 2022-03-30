#!/bin/bash
#
#
# Test if the parameter is correct.
# If yes continue.
# If not exit and show the usage form.
if [[ $1 = "control_file.txt" ]]
then
	grep -o "[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+" control_file.txt |  uniq -d > uniq_ip.txt
	for i in $(cat uniq_ip.txt); do
	grep -m1 $i $1 >> /tmp/output_1.txt
	done
	else
	echo "Usage $0 control_file.txt"
   exit 1
fi
rm uniq_ip.txt
