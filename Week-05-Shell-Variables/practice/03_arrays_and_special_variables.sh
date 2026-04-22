#!/bin/bash

# Week 5 - Arrays and Special Variables

echo "===== Indexed arrays ====="
declare -a fruits
fruits[0]="apple"
fruits[1]="banana"
fruits[2]="mango"

echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"
echo "Indices used: ${!fruits[@]}"
echo "Number of elements: ${#fruits[@]}"

fruits+=("grape")
echo "After append: ${fruits[@]}"

unset 'fruits[1]'
echo "After deleting index 1: ${fruits[@]}"

echo

echo "===== Associative arrays ====="
declare -A student
student[name]="Biswajit"
student[course]="CSE"
student[city]="Kolkata"

echo "Student name: ${student[name]}"
echo "All values: ${student[@]}"
echo "All keys: ${!student[@]}"
echo "Total pairs: ${#student[@]}"

unset 'student[city]'
echo "After deleting city: ${student[@]}"

echo

echo "===== Frequently used shell variables ====="
echo "HOME = $HOME"
echo "USER = $USER"
echo "HOSTNAME = $HOSTNAME"
echo "PWD = $PWD"
echo "PATH = $PATH"

echo

echo "===== Special shell variables ====="
echo "Shell name ($0) = $0"
echo "Shell process ID ($$) = $$"
ls >/dev/null
echo "Last command return code ($?) = $?"
echo "Shell flags ($-) = $-"

echo

echo "===== Process control ====="
sleep 5 &
echo "Background job PID: $!"
jobs

echo

echo "===== Exit code demo ====="
ls missing_file >/dev/null 2>&1
echo "Exit code for wrong file = $?"

ls >/dev/null
echo "Exit code for success = $?"
