#!/bin/bash

# Week 5 - Basic Shell Variables

echo "===== Creating variables ====="
name="Biswajit"
course="Shell Variables"
age=22

echo "Name: $name"
echo "Course: $course"
echo "Age: $age"

echo

echo "===== Using braces ====="
file_name="report"
echo "Without braces: $file_name.txt"
echo "With braces: ${file_name}.txt"

echo

echo "===== Exporting variables ====="
city="Kolkata"
export city
bash -c 'echo "Child shell can use exported variable city = $city"'

echo

echo "===== Removing variables ====="
temp_var="temporary data"
echo "Before unset: $temp_var"
unset temp_var
echo "After unset: $temp_var"

echo

echo "===== Checking variables ====="
student="present"
[[ -v student ]]
echo "Is student set? Return code = $?"

[[ -v missing ]]
echo "Is missing set? Return code = $?"

[[ -z ${missing+x} ]]
echo "Is missing NOT set? Return code = $?"

echo

echo "===== Default values ====="
echo "username with default: ${username:-Guest}"
echo "username with assign default: ${username:=Guest}"
echo "username after assignment: $username"
echo "username already set, show replace value: ${username:+User already exists}"

echo

echo "===== Length and slicing ====="
message="HelloWorld"
echo "Message: $message"
echo "Length: ${#message}"
echo "Slice from index 5 length 5: ${message:5:5}"

echo

echo "===== Real-life example ====="
website="github"
domain="com"
echo "Profile URL: https://${website}.${domain}"
