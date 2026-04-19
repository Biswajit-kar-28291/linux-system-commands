#!/bin/bash

echo "=== /dev/null Practice ==="

echo
echo "1. Hide normal output"
ls > /dev/null
echo "Normal output hidden"

echo
echo "2. Hide error output"
ls wrong_folder 2> /dev/null
echo "Error output hidden"

echo
echo "3. Hide both normal output and error"
ls wrong_folder > /dev/null 2>&1
echo "Both output and errors hidden"

echo
echo "4. Create folder and ignore error if already exists"
mkdir demo_test 2> /dev/null
echo "If folder already existed, error was ignored"

echo
echo "Done"