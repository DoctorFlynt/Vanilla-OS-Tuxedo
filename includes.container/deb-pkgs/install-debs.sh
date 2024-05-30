#!/bin/bash

apt-get install -y /deb-pkgs/tuxedo-keyboard_3.2.10_all.deb
apt-get install -y /deb-pkgs/tuxedo-drivers_4.4.2_all.deb
apt-get install -y /deb-pkgs/tuxedo-keyboard-ite_0.4.3_all.deb

set -e
for file in /deb-pkgs/*; do
    if [ ! -f "$file" ]; then
        continue
    fi

    extension=${file##*.}
    if [ $extension != "deb" ]; then
        continue
    fi

    echo "installing $file"

    apt-get install -y $file
done


