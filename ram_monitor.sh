#!/bin/bash

FREE=$(free -mt | grep Total | awk '{print $4}')
TH=8500

if [[ $FREE -le $TH ]]
then
echo "------------------------------"
echo "          WARNING!!!"
echo "      RAM is running low..."
echo "------------------------------"
else
echo "------------------------------"
echo "RAM is sufficient..."
echo "------------------------------"
fi
