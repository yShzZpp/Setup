sudo docker run -d --name wxwork --device /dev/snd --ipc="host" \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 -v $HOME/WXWork:/WXWork \
 -v $HOME:/HostHome \
 -v $HOME/wine-WXWork:/home/wechat/.deepinwine/Deepin-WXWork \
 -e DISPLAY=unix$DISPLAY \
 -e XMODIFIERS=@im=fcitx \
 -e QT_IM_MODULE=fcitx \
 -e GTK_IM_MODULE=fcitx \
 -e AUDIO_GID=`getent group audio | cut -d: -f3` \
 -e GID=`id -g` \
 -e UID=`id -u` \
 -e DPI=96 \
 -e WAIT_FOR_SLEEP=1 \
boringcat/wechat:work
