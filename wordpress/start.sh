#!/bin/bash

mountedDir="/mnt/rbd"
path1="/mnt/rbd/built-in"
path2="/mnt/rbd/content"
file1="/mnt/rbd/config.json"

if [ ! -d $path1 ]; then
  cp -r /usr/bin/wordpress/built-in "$mountedDir"
fi

if [ ! -d $path2 ]; then
  cp -r /usr/bin/wordpress/content "$mountedDir"
fi

if [ ! -f $path3 ]; then
  cp /usr/bin/wordpress/config.json "$mountedDir"
  chmod +x /mnt/rbd/config.json
fi

/usr/bin/wordpress/journey -custom-path="/mnt/rbd" -log="/mnt/rbd/log.txt"