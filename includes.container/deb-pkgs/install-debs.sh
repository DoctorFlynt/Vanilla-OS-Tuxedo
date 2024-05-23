#!/bin/bash
set -e
for file in /deb-pkgs/*; do
    if [ ! -f "$file" ]; then
        continue
    fi

    extension=${file##tuxedo-keyboard*.}
    if [ $extension != "deb" ]; then
        continue
    fi

    echo "installing $file"

    apt-get install -y $file

      extension=${file##tuxedo-control-center*.}
    if [ $extension != "deb" ]; then
        continue
    fi

    echo "installing $file"

    apt-get install -y $file

done
