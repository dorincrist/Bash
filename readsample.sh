#/bin/bash
# interactive script for user input

echo "Enter your first name: "
read FIRSTNAME
echo "Enter your last name: "
read LASTNAME


echo " "
echo "Your Full Name is: $FIRSTNAME $LASTNAME"
echo "Enter Your Age: "
read USERAGE

echo "In 10 Years, You Will Be $( expr $USERAGE + 10 ) years old"

