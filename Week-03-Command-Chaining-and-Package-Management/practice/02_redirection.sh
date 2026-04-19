#!/bin/bash

echo "=== Redirection Practice ==="

echo
echo "1. Overwrite output into file"
echo "This is the first line" > output.txt
cat output.txt

echo
echo "2. Append output into file"
echo "This is the second line" >> output.txt
cat output.txt

echo
echo "3. Redirect error into file"
ls wrong_folder 2> error.txt
cat error.txt

echo
echo "4. Redirect normal output and error separately"
ls > success.txt 2> errors.txt

echo
echo "Normal output stored in success.txt"
echo "Error output stored in errors.txt"

echo
echo "5. Redirect both stdout and stderr into one file"
ls wrong_folder > combined.txt 2>&1
cat combined.txt

echo
echo "Done"