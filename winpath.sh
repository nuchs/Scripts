#!/bin/sh

ABS_PATH=`realpath $1`

case $ABS_PATH in
  $HOME*)
    WINUSER=`powershell.exe '$env:UserName' | tr -d '\r'`
    UB_DIR=`ls -d /mnt/c/Users/$WINUSER/AppData/Local/Packages/CanonicalGroupLimited*`
    ROOT="$UB_DIR/LocalState/rootfs/home/$USER"
    ABS_PATH=`echo $ABS_PATH | sed "s~$HOME~$ROOT~"`
    ;;
esac
echo $ABS_PATH
WIN_PATH=`echo $ABS_PATH |
    sed 's~/mnt/\([a-zA-Z]\)/\(.*\)~\1:\\\\\\\\\2~' | 
    sed 's~/~\\\\\\\\~g'`

echo $WIN_PATH
