#!/bin/bash
set -x

echo "Enter the IP address:"
read IP

ping_cmd="ping -n 3 $IP"

if $ping_cmd > /dev/null 2>&1
then
    echo "The IP $IP is reachable"
else
    echo "The IP $IP is not reachable"
fi

