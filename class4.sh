#!/bin/bash

# Script Name:                  Ops Challenge - Functions
# Author:                       Joe Gutmann
# Date of latest revision:      26Oct2023
# Purpose:                      Ops Challenge: Class 03

# Declaration of variables
#Creates four directories: dir1, dir2, dir3, dir4
mkdir dir1 dir2 dir3 dir4

#Put the names of the four directories in an array
directories=("dir1" "dir2" "dir3" "dir4")

#Made this way too hard for the exercise trying to do everything in a single line of code.
#mkdir dir1 && touch f1.txt && mv f1.txt dir1
#mkdir dir2 && touch f2.txt && mv f2.txt dir2
#mkdir dir3 && touch f3.txt && mv f3.txt dir3
#mkdir dir4 && touch f4.txt && mv f4.txt dir4

#References the array variable to create a new .txt file in each directory
for dir in "${directories[@]}"; do
touch "$dir/file.txt"
done    
# Main  


#append a new item to the list
#new_snack=monster #how to add monster to the end
#grocery_list+=monster
#echo ${grocery_list[*]}