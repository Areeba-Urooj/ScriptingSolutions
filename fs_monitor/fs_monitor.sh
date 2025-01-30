#!/bin/bash

FS=$(df -h | egrep -v "Filesystem|tmpfs" | grep sda3 | awk '{print $5}' | tr -d %)
TH=8
TO="cmy61677@gmail.com"

if [[ $FS -ge $TH ]]
then
echo "-----------------------------------"
echo "             Warning!!!"
echo "      Hard disk is running out $FS %" | mail -s "Disk space alert" $TO
echo "-----------------------------------"
else
echo "Hard disk is in good condition"
fi

