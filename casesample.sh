#!/bin/bash
# demo of the case statement

clear
echo "MAIN MENU"
echo "=========="

echo " 1) Choise One"
echo " 2) Choise Two"
echo " 3) Choise Three"
echo " "
echo " Enter Choise: "
read MENUCHOICE

case $MENUCHOICE in
      1)
      	echo "Congratulations for Choosing the First Option";;
      2)
	echo "Choise 2 Chose";;
      3)
        echo "Last Choise Made";;
      *)
        echo "You chose unwisely";;
esac


