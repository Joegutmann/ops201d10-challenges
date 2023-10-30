#!/bin/bash

# Script Name:                  Ops Challenge - file and directory check
# Author:                       Joe Gutmann
# Date of latest revision:      30Oct2023
# Purpose:                      Ops Challenge: Class 06

# Infinite loop, so they can make/check more than one file or directory.
while true; do
  # hit them up for the name of the file or directory. -p is so it writes before the prompt
  read -p "Enter the name of the file or directory to check: " item_to_check

  # Array containing what we are looking for
  items_to_check=("$item_to_check")

  # Iterate through the array
  for item in "${items_to_check[@]}"; do
    # Check if the folder/directory name exists. -e searches for either folder or directory.
    # I went with this as it was not as cumbersome as doing either a file search
    #or a directory search individually, and I wanted them to decide which they wanted
    #to create. the first way I tried it seemed to make a file only as the default.
    if [[ ! -e "$item" ]]; then
      read -p "$item does not exist. Do you want to create a file or a directory? (f/d): " type_to_make
      if [[ "$type_to_make" == "f" ]]; then
        touch "$item"
        echo "File $item has been birthed."
      elif [[ "$type_to_make" == "d" ]]; then
        mkdir -p "$item"
        echo "Directory $item has been birthed."
      else
        echo "Invalid input. $item was not birthed."
      fi
    else
      echo "$item already exists."
    fi
  done

  # Ask user if they want to continue
  read -p "Do you want to continue checking for more files or directories? (y/n): " continue_checking
  if [[ "$continue_checking" != "y" ]]; then
    echo "You may leave."
    break
  fi
done