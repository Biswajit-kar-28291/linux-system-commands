#!/bin/bash

echo "Ping Test"
ping -c 2 google.com

echo "Traceroute"
traceroute google.com

echo "NSLookup"
nslookup google.com

echo "Dig"
dig google.com

echo "Netstat"
netstat -tuln