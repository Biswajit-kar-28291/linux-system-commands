#!/bin/bash

# Week 5 - String Operations on Variables

text="apple-banana-apple-mango"
echo "Original text: $text"

echo

echo "===== Pattern removal ====="
echo "Remove shortest match from start (#): ${text#a*-}"
echo "Remove longest match from start (##): ${text##*-}"
echo "Remove shortest match from end (%): ${text%-*}"
echo "Remove longest match from end (%%): ${text%%-*}"

echo

echo "===== Pattern replacement ====="
echo "Replace first apple: ${text/apple/orange}"
echo "Replace all apple: ${text//apple/orange}"

echo

echo "===== Replace by position ====="
path="/home/student/docs"
echo "Original path: $path"
echo "Replace beginning: ${path/#\/home/\/mnt}"
echo "Replace end: ${path/%docs/files}"

echo

echo "===== Changing case ====="
word="bIsWaJiT"
echo "Original: $word"
echo "First char lower: ${word,}"
echo "All lower: ${word,,}"
echo "First char upper: ${word^}"
echo "All upper: ${word^^}"

echo

echo "===== Restricting value types ====="
declare -i count=10
count=count+5
echo "Integer variable count = $count"

declare -l lower_text="HELLO WORLD"
echo "Lowercase only = $lower_text"

declare -u upper_text="hello world"
echo "Uppercase only = $upper_text"

declare -r company="OpenAI"
echo "Readonly variable company = $company"

echo

echo "===== Remove restrictions ====="
declare +i count
count="Now text is allowed"
echo "$count"
