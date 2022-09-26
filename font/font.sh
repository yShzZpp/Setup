#!/bin/bash

echo "$0 ﬆ ﬅ"

ret=tar -xvf ./local.tar.bz2
if [ $ret -eq 0 ];then
	tar	-xvf ./font/font.sh
fi

if [ "$1" == "init" ];then
	echo "init"
	cp ./local/* /usr/share/fonts/ -rf
fi


