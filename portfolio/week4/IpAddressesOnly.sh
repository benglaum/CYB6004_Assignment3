#!/bin/bash

#Stores the ouput of the IpInfo into vairable.
All_Ip="$(./IpInfo.sh)"

#Displays only the lines with IP Address on them.
test=$(echo "$All_Ip" | sed -n 's/IP Address:/IP Address:/p')

#remove white space from begining
echo "$test" | sed -e 's/^[ \t]*//'
