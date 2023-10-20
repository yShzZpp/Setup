#!/bin/bash

sh_name=`basename $0`

find_right_path()
{

	pwd=`pwd`
	now=`basename $pwd`

	if [ "$now" != "Setup" ];then

		cd ../
		echo "cd ../"
		return 1

	fi

		echo "correct path"

	return 0

}

find_right_path

if [[ $? == 1 ]];then

	find_right_path

	if [[ $? == 1 ]];then
		
		echo "could not find the file \"$sh_name\""
		exit -1;
	fi

fi

pwd=`pwd`

rm ~/.config/nvim -rf
cp -r -f $pwd/nvim/nvim ~/.config/nvim

