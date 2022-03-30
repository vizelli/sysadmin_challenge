#!/bin/bash
#
#
# Test if the parameter is correct.
# If yes continue.
# If not exit and show the usage form.
if [[ $1 = "myservers_list.txt" ]]
then
	#looping to grab the OS information
	for i in $(cat $1); do
	ssh myuser@$i '(date "+%T %D";uname -n;/usr/sbin/ifconfig -a |grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |head -1;uname -a)' >> servers_version.txt
	done
	else
	echo "Usage $0 myservers_list.txt"
   exit 1
fi
