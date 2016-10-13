#!/system/bin/sh
n=0
if [ -f /data/misc/bluedroid/bt_mac ]
then
	exit 0
fi

for i in $(cat /nvdata/MACBT)
do
	if [ $n -lt 5 ]
	then
		echo -n "$i:" >> /data/misc/bluedroid/bt_mac
	else
		echo -n "$i" >> /data/misc/bluedroid/bt_mac
	fi
	let n+=1
done
chmod 644 /data/misc/bluedroid/bt_mac
