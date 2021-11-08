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
echo "Hello, Welcome to the Calculator Program"
echo "Which operations would you like to prefer? #Add, #Subtract or #Exit"
read OPERATION
case $OPERATION in 
"Add")
echo "what are your numbers" 
read NUM1
read NUM2
RESULT= expr $NUM1 + $NUM2
echo $RESULT

;;
esac


