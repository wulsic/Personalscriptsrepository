#!/bin/sh
############################################################################
#                                                                          #
# Copyright (c) 2014 - wulsic (wulsic@hotmail.com)                         #
#                                                                          #
# This simple android rom building script file is intended for personal    #
# and/or educational use only. But who is ever going to use this           #
# except me? This is an simple script so don't expect too much.            #
#                                                                          #
############################################################################
clear
choice=""

while [ "$choice" != "q" ]
do
  echo "============================================================"
  echo "               What do you want me to do Sir?               "
  echo "============================================================"
  echo 
  echo "  1 - Build Android  "
  echo "  2 - Lunch Device   "
  echo "  3 - Sync repo      "
  echo "  4 - Make clobber   "
  echo "  5 - Terminal       "
  echo "  0 - Quit menu      "
  echo
  echo -n "Enter option: "

read choice

case $choice in

1)
clear
res1=$(date +%s.%N)
clear
  echo "============================================================"
  echo "                    Building Environment                    "
  echo "============================================================"
    . build/envsetup.sh
    export USE_CCACHE=1
    prebuilts/misc/linux-x86/ccache/ccache -M 50G
    export RELEASE_TYPE=NIGHTLY
  clear
  echo "============================================================"
  echo "                      Lunching Device                       "
  echo "============================================================"
    lunch cm_nevisp-userdebug
  clear
  echo "============================================================"
  echo "                    Starting to compile                     "
  echo "============================================================"
    mka bacon
echo
res2=$(date +%s.%N)
echo "${bldgrn}Total time elapsed: ${txtrst}${grn}$(echo "($res2 - $res1) / 60"|bc ) minutes ($(echo "$res2 - $res1"|bc ) seconds) ${txtrst}"
echo
echo "Press ENTER to return to the menu."
read -p ""
;;

2)
clear
  echo "============================================================"
  echo "                      Lunching Device                       "
  echo "============================================================"
. build/envsetup.sh
lunch cm_nevisp-userdebug
echo "Press ENTER to continue..."
read -p ""
clear ;;

3)
clear
res1=$(date +%s.%N)
  echo "============================================================"
  echo "                        Syncing Repo                        "
  echo "============================================================"
repo sync
res2=$(date +%s.%N)
echo "${bldgrn}Total time elapsed: ${txtrst}${grn}$(echo "($res2 - $res1) / 60"|bc ) minutes ($(echo "$res2 - $res1"|bc ) seconds) ${txtrst}"
echo "Press ENTER to continue..."
read -p ""
clear ;;

4)
clear
  echo "============================================================"
  echo "                        Make Clobber                        "
  echo "============================================================"
. build/envsetup.sh
make clobber
echo "Press ENTER to continue..."
read -p ""
clear ;;

5)
clear
  echo "============================================================"
  echo "                  Going to Terminal. Cya :)                 "
  echo "============================================================"
echo "Press ENTER to continue..."
read -p ""
clear
return
clear ;;

0)
clear
  echo "============================================================"
  echo "           Goodbye Sir, may the force be with you.          "
  echo "============================================================"
echo "Press ENTER to continue..."
read -p ""
exit ;;

*)
clear
  echo "============================================================"
  echo "   What are you trying to do? There is no hidden menu or?.  "
  echo "============================================================"
echo "Press ENTER to continue..."
read -p ""
clear ;;

esac
done
exit 0
