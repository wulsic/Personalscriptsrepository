#!/bin/sh
choice=""

while [ "$choice" != "q" ]
do
  echo "============================================================"
  echo " Java version switcher for Android compiling (Cm11/Cm12)    "
  echo "============================================================"
  echo 
  echo "  Java Switcher Menu     "
  echo
  echo "  1 - Switch to java 1.6 "
  echo "  2 - Switch to java 1.7 "
  echo "  3 - Check java version "
  echo "  4 - Android Build info "
  echo "  0 - Quit java switcher "
  echo -n "Enter option: "

read choice

case $choice in

1)
sudo update-java-alternatives -s java-6-oracle
echo "Press enter to continue..."
read -p "" ;;

2)
sudo update-java-alternatives -s java-7-oracle
echo "Press enter to continue..."
read -p "" ;;

3)ls -la /etc/alternatives/java* && ls -la /etc/alternatives/jar
echo "Press enter to continue..."
read -p "" ;;

4)echo "Cyanogenmod11 uses java 1.6 for compiling   "
  echo "Cyanogenmod12 uses java 1.7 for compiling   " ;;

0)echo "Quitting"
echo "Press enter to continue..."
exit ;;

*) echo "menu item is not available; try again!"
echo "Press enter to continue..."
read -p "" ;;

esac
done
exit 0
