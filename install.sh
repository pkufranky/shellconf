#!/bin/bash
cd
for n in bashrc bash_profile inputrc screenrc lftp gitconfig gitignore
do
	ln -sfv -T .rc/$n .$n
done
cd - >&/dev/null
