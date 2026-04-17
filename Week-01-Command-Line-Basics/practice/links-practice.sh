#!/bin/bash

touch original.txt

echo "Creating hard link"
ln original.txt hardlink.txt

echo "Creating soft link"
ln -s original.txt softlink.txt

echo "Check inode"
ls -li