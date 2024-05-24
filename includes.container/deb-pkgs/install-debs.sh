#!/bin/bash

set -e
for file in /deb-pkgs/*; do
    if [ ! -f "$file" ]; then
        continue
    fi

    extension=${file##*.}
    if [ $extension != "deb" ]; then
        continue
    fi
    if [ "$file" != *"control-center"* ];then
        continue
    fi
   echo "installing $file"

    apt-get install -y $file
    
done

apt-get install -y ./tuxedo-control-center_2.1.8_amd64.deb
