#!/usr/bin/env bash

#sysinfo

present_date()
{
	date
}

TITLE="System Information for $HOSTNAME"
RIGHT_NOW=$(present_date)
TIME_STAMP="Updated on $(present_date) by $USER"


system_info()
{
	echo "<h2>System release info<h/2>"
	echo "<p>Function not yet implemented</p>"
}

show_uptime()
{
	echo "<h2>System uptime<h/2>"
	echo "<pre>"
	uptime
	echo "</pre>"
}

drive_space()
{
	echo "<h2>Filesystem Space</h2>"
	echo "<pre>"
	df -h
	echo "</pre>"
}

home_space()
{
	if [ "$(id -u)" = "0" ]; then
		echo "<h2>Home directory space by user</h2>"
		echo "<pre>"
		echo "Bytes Directory"
		du -s /home/* | sort -nr
		echo "</pre>"
	fi
}

write_page()
{
	cat <<- _EOF_
	<html>
	<head>
		<title>$TITLE</title>
	</head>
	<body>
		<h1>$TITLE</h1>
		<p>$TIME_STAMP</p>
		$(system_info)
		$(show_uptime)
		$(drive_space)
		$(home_space)
	</body>
	</html>
_EOF_
}

usage()
{
	echo "usage: sysinfo_page [[[-f file]]] [-i] | [-h]"
}

interactive=
filename=~/projects/bash/sysinfopage.html

while [ "$1" != "" ]; do
    case $1 in
        -f | --file )           shift
                                filename=$1
                                ;;
        -i | --interactive )    interactive=1
                                ;;
        -h | --help )           usage
                                exit
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done

if [ "$interactive" = "1" ]; then
  echo "interactive is on"
else
  echo "interactive is off"
fi
echo "output file = $filename"

write page
write_page > $filename















