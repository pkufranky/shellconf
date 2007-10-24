#!/bin/bash
who=$(whoami)
cd
for n in bashrc bash_profile inputrc screenrc lftp vimplaterc.${who} gitrc gitconfig.${who}
do
	ln -sfv .rc/$n .$(basename $n .$who)
done
cd - >&/dev/null
