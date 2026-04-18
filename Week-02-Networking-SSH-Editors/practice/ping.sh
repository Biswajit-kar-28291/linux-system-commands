#!/bin/bash

echo "Checking Localhost"
ping -c 4 127.0.0.1

echo "Checking Router"
ping -c 4 192.168.29.1

echo "Checking Internet"
ping -c 4 8.8.8.8

echo "Checking DNS"
ping -c 4 google.com