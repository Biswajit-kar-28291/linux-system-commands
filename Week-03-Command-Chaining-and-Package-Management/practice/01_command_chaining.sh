#!/bin/bash

echo "=== Command Chaining Practice ==="

echo
echo "1. Using ;"
echo "Runs all commands one by one, even if one fails"
pwd; ls; date

echo
echo "2. Using &&"
echo "Second command runs only if first command is successful"
mkdir demo_folder && echo "demo_folder created successfully"

echo
echo "3. Using ||"
echo "Second command runs only if first command fails"
cd wrong_folder || echo "Folder not found"

echo
echo "4. Combining && and ||"
mkdir test_folder && echo "test_folder created" || echo "Could not create test_folder"

echo
echo "Done"