#!/bin/bash

touch test.txt

echo "Before permission:"
ls -l test.txt

echo "Change permission to 644"
chmod 644 test.txt

ls -l test.txt

echo "Make executable"
chmod +x test.txt

ls -l test.txt