#!/bin/bash
for i in {1..1000}
do 
date +"%H:%M:%S"| tr '\n' ' '
sensors|egrep "SoC|CPU|IO" | tr '\n' ' '  | awk '{print $0" Total Power "$6+$10" W"}'
sleep 2; 
echo;
done > hadoop-sensors.lst &
