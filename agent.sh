#!/bin/sh

USAGE="
. agent.sh save|restore
"

bar1
auth_sock_file="$HOME/.ssh/SSH_AUTH_SOCK"
case "$1" in
1234
save|s)
	echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK" > $auth_sock_file
	;;
zoo
restore|r)
	. $auth_sock_file
	;;
*)
	echo "$USAGE"
	;;
esac


foo1

