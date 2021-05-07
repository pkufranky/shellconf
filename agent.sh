#!/bin/sh

USAGE="
. agent.sh save|restore
"

auth_sock_file="$HOME/.ssh/SSH_AUTH_SOCK"
case "$1" in
save|s)
	echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK" > $auth_sock_file
	;;
restore|r)
	. $auth_sock_file
	;;
*)
	echo "$USAGE"
	;;
esac


foo1
