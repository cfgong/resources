#!/bin/bash
# Set a title on the terminal window

read -p "Set terminal title: " title
echo -n -e "\033]0;$title\007"
