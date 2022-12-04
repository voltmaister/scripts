#!/bin/bash

echo "What type do you want your file converted into";
echo "1. html"
echo "2. pdf"
echo "3. Exit from menu "
echo -n "Enter your menu choice [1-3]: "

# Running a forever loop using while statement
# This loop will run until select the exit option.
# User will be asked to select option again and again
while :
do

# reading choice
read choice

# case statement is used to compare one value with the multiple cases.
case $choice in
  # Pattern 1
  1)    echo "Selected type is html. "
        pandoc $1 -f markdown -t html --metadata -s -o $(basename $1 .md).html
        echo "What type do you want your file converted into";
        echo "1. html"
        echo "2. pdf"
        echo "3. Exit from menu "
        echo -n "Enter your menu choice [1-3]: ";;
  # Pattern 2
  2)  echo "Selected type is pdf. "
        echo $1
        pandoc -N --variable "geometry=margin=1.2in" --variable mainfont="MesloLGS NF Regular" --variable sansfont="MesloLGS NF Regular" --variable monofont="MesloLGS NF Regular" --variable fontsize=12pt --variable version=2.0 $1 --pdf-engine=xelatex --toc -o $(basename $1 .md).pdf
        echo "What type do you want your file converted into";
        echo "1. html"
        echo "2. pdf"
        echo "3. Exit from menu "
        echo -n "Enter your menu choice [1-3]: ";;
  # Pattern 3
  3)  echo "Quitting ..."
      exit;;
  # Default Pattern
  *) echo "invalid option";;
  
esac
  echo -n "Enter your menu choice [1-3]: "
done