#!/bin/bash
name=$(hostname)
echo "The name of the computer is $name"

echo
# Display RAM information
echo "RAM"
#sudo lshw -class memory | grep memory -A 2 #| grep size 
sudo lshw -class memory | grep memory -A 4 | sed '3d'
echo

echo "CPU"
sudo lshw -class cpu | grep cpu -A 12 | awk 'NR != 2 && NR != 7 && NR != 8 && NR != 9 && NR != 10 && NR != 11 && NR != 13 && NR != 14 && NR != 15'
#| sed '2d' | sed '7d' | sed '8d' | sed '9d' | sed '10d' | sed '11d' #| sed '13d' |
#sed '14d'

echo
echo "Display adapter"
sudo lshw -class display | grep display -A 12 | awk 'NR != 7 && NR != 8'
echo

echo "Network adapter"
sudo lshw -class network 
echo