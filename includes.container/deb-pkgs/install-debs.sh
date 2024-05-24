#!/bin/bash

set -e
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
    apt-get install -y tuxedo-keyboard_3.2.10_all.deb
    echo "installing tuxedo-keyboard-drivers"
   # apt install -y tuxedo-control-center_2.1.8_amd64.deb
    echo "installing tuxedo-control-center"
    
done
