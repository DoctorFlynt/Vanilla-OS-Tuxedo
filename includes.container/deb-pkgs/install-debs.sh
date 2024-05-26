#!/bin/bash

#apt-get install -y /deb-pkgs/tuxedo-keyboard_3.2.10_all.deb

set -e
for file in /deb-pkgs/*; do
    if [ ! -f "$file" ]; then
        continue
    fi

    extension=${file##*.}
    if [ $extension != "deb" ]; then
        continue
    fi

    if [ "$file" = *"control-center"* ];then
       continue
    fi

   echo "installing $file"

    apt-get install -y $file
done

set -e
for file in /deb-pkgs/*; do
    if [ ! -f "$file" ]; then
        continue
    fi

    extension=${file##*.}
    if [ $extension != "deb" ]; then
        continue
    fi

    if [ "$file" = *"control-center"* ];then
       continue
    fi

   echo "installing $file"

    apt-get install -y $file
done
