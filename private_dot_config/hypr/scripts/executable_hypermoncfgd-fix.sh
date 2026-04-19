#!/bin/sh

sleep 10

cycle=60         # command execution interval in seconds

while true
	do
	sleep $(($cycle - $(date "+%s") % $cycle ))
	if journalctl --since "30 seconds ago" | grep 'poll monitors failed: failed to query monitors: exit status 4' > /dev/null
	then
		systemctl --user restart hyprmoncfgd
		now=`date +"%x %X"`
		echo "Hyprmoncfg fix executed, ${now}." >> mylog.log
	fi
done
