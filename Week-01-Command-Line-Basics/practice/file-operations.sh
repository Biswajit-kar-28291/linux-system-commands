#!/bin/bash

echo "Creating file..."
touch sample.txt

echo "Writing to file..."
echo "Hello Linux" > sample.txt

echo "Appending..."
echo "Week 1 practice" >> sample.txt

echo "Copy file..."
cp sample.txt copy.txt

echo "Move file..."
mv copy.txt moved.txt

echo "Done!"