#!/bin/sh
############################################################################
#                                                                          #
# Copyright (c) 2014 - wulsic (wulsic@hotmail.com)                         #
#                                                                          #
# Java Switcher script.  This script file is intended for personal         #
# and/or educational use only.  It may not be duplicated for monetary      #
# benefit or any other purpose without the permission of the developer.    #
# If you are going to use this script then you have to modify the java     #
# alternative to your java version to get it working.                      #
#                                                                          #
############################################################################
clear
choice=""

while [ "$choice" != "q" ]
do
  echo "============================================================"
  echo " Java version switcher for Android compiling (Cm11/Cm12)    "
  echo "============================================================"
  echo 
  echo "  Java Switcher Menu Used "
  echo
  echo "  1 - Switch to java 1.6  "
  echo "  2 - Switch to java 1.7  "
  echo "  3 - Check java version  "
  echo "  4 - Android Build info  "
  echo "  0 - Quit java switcher  "
  echo -n "Enter option: "

read choice

case $choice in

1)
clear
echo "Wait for it..."
echo
sudo update-java-alternatives -s java-6-oracle
echo "Press enter to continue..."
read -p "" 
clear ;;

2)
clear
echo "Wait for it..."
echo
sudo update-java-alternatives -s java-7-oracle
echo "Press enter to continue..."
read -p "" 
clear ;;

3)
clear
echo "Wait for it..."
echo
ls -la /etc/alternatives/java* && ls -la /etc/alternatives/jar
echo "Press enter to continue..."
read -p "" 
clear ;;

4)
clear
echo
echo "Cyanogenmod11 uses java 1.6 for compiling "
echo "Cyanogenmod12 uses java 1.7 for compiling "
echo 
echo "Press enter to continue..."
read -p ""
clear ;;

0)echo "Quitting"
echo "Press enter to continue..."
exit ;;

*) echo "This menu item doesn't exist. Try again!"
echo "Press enter to continue..."
read -p "" ;;

esac
done
exit 0
