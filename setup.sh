#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: ./setup.sh <name of the symlink of bash aliases file>"
    exit -1
fi

a=(`find . -type f -name ".*"`)
for i in "${a[@]}"
    do 
        if [ $i == "./.bash_aliases" ]; then
            ln -sf $PWD/$i ~/$1
        else
            ln -sf $PWD/$i ~
        fi
    done
