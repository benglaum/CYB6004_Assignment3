#!/bin/bash

op="$(./IpInfo.sh)"

echo "$op" | sed '/s/IP/'

