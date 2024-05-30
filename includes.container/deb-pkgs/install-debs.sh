#!/bin/bash

#apt-get install -y /deb-pkgs/tuxedo-drivers_4.5.0_all.deb
apt-get install -y /deb-pkgs/tuxedo-keyboard-ite_4.4.2_all.deb
#apt-get install -y /deb-pkgs/tuxedo-keyboard-dkms_4.4.2_all.deb
#apt-get install -y /deb-pkgs/tuxedo-touchpad-fix_4.4.2_all.deb

apt-get install -y /deb-pkgs/tuxedo-control-center_2.1.8_amd64.deb

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
#    apt-get install -y $file
#done


