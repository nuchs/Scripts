#!/bin/sh

PS_SCRIPT=$1
shift
PS_SCRIPT_ARGS=$@

case $PS_SCRIPT in
.*)                                     ;;
/*)                                     ;;
*.ps1) PS_SCRIPT=`which $PS_SCRIPT`     ;;
*)     PS_SCRIPT=`which $PS_SCRIPT.ps1` ;;
esac

PS_SCRIPT=`winpath $PS_SCRIPT`

powershell.exe -File $PS_SCRIPT $PS_SCRIPT_ARGS
