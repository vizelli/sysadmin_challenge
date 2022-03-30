# sysadmin_challenge
Sysadmin Challenge 

8.Using bash write a script to get OS version from multiple Linux servers

Premisses:

1) The script must receive an argument to process, which is the file name (myservers_list.txt);
2) You will use 'ssh' command to connect into different servers using 'myuser' as the username ;


The result should be writted in the file 'servers_version.txt' using the format bellow:
date (hh:mm:ss mm/dd/yy)    <server name>      <server ip>    <server version> 

E.g:
18:53:44 12/10/21    webserver001   192.168.80.5   Linux (none) 2.6.34.14 ##44 Tue Oct 15 20:50:15 CEST 2013 i686 GNU/Linux

USAGE:

bash get_OS_info.sh myservers_list.txt
