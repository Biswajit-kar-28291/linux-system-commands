#!/bin/bash

echo "=== Pipe Practice ==="

echo
echo "1. ls | sort"
ls | sort

echo
echo "2. echo | wc -w"
echo "hello world from linux" | wc -w

echo
echo "3. echo | tr"
echo "linux practice" | tr 'a-z' 'A-Z'

echo
echo "4. ps aux | grep bash"
ps aux | grep bash

echo
echo "5. cat /etc/passwd | head"
cat /etc/passwd | head

echo
echo "Done"