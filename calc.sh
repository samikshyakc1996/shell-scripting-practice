#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
# Then, capture the user selection.
# If the selection matches a supported operation, execute the operation.
# If the selection does not match a support operation, display an error message.
# When the operation is complete, redisplay the menu.
echo "Hello, Welcome to the Calculator Program."

while true
  do
    echo "Which operations would you like to prefer? Your choices are:
      1) Addition (Use these keywords: Add, add, +, 1) 
      2) Subtraction (Use these keywords: Subtract, sub, -, Difference, diff, 2) 
      3) Exit, exit, 3 "

    read OPERATION
    case $OPERATION in 
    "Add" | "+" | "add"| "1")
    echo "Enter your first number" 
    read NUM1
    echo "Enter your second number" 
    read NUM2

    echo "The Sum is:" 
    RESULT= expr $NUM1 + $NUM2 

    ;;
    "Subtract" | "-" | "Sub" | "sub"|"Difference" |"diff"| "2" )
    echo "Enter your first number" 
    read NUM1
    echo "Enter your second number" 
    read NUM2

    echo "The difference is:"
    RESULT= expr $NUM1 - $NUM2
    ;;
    "Exit"|"exit" |"3")
    break
    ;;

    *)
    echo "Sorry, your choice did not match any operation."
    esac
  done


