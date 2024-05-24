#!/bin/bash

#set -e
#for file in /deb-pkgs/*; do
#    if [ ! -f "$file" ]; then
#        continue
#    fi
#
#    extension=${file##*.}
#    if [ $extension != "deb" ]; then
#        continue
#    fi
#
#    echo "installing $file"
#
    apt-get install -y tuxedo-keyboar*.deb
    apt-get install -y tuxedo-control-center*.deb
done
