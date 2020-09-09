#!/bin/bash

DISTRO=apricot
MIRROR=http://packages.deepin.com/deepin/dists/
DIR_TRABAJO=~/

cd $DIR_TRABAJO

if [[ $(curl $MIRROR 2> /dev/null | grep "$DISTRO") ]]; then
	#statements
	echo $(date) - Ya agregaron $DISTRO a $MIRROR >> nuevadistro.txt
	export DISPLAY=:0
	xdg-open nuevadistro.txt &
	xdg-open https://osdn.net/projects/deepin/storage/ &
	xdg-open http://packages.deepin.com/deepin-cd/ &
fi
