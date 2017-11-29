#!/bin/sh
############################################################################
#                                                                          #
# Copyright (c) 2017 - wulsic (wulsic@gmail.com)                         #
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
  echo "  6 - Change Color   "
  echo "  7 - Build TWRP     "
  echo "  8 - Build MultiRom "
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
    lunch omni_h850-userdebug
  clear
  echo "============================================================"
  echo "                    Starting to compile                     "
  echo "============================================================"
    make -j4
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
	lunch omni_h850-userdebug
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

# Under this line starts the menu in menu menu's.
#---------------------------------------------------------------------------------------------------------------------------------
6)
clear
  echo "============================================================"
  echo "     Enter a Number to Change the Terminals Appearance      "
  echo "============================================================"
  echo 
  echo "  8  - Change Text Foreground Color    "
  echo "  9  - Change Text Background Color    "
  echo "  1  - Reset Custom Colors             "
  echo "  11 - Go back to menu                 "
clear ;;

7)
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
    lunch omni_h850-userdebug
  clear
  echo "============================================================"
  echo "                    Starting to compile                     "
  echo "============================================================"
    make recoveryimage # builds the recovery image
echo
res2=$(date +%s.%N)
echo "${bldgrn}Total time elapsed: ${txtrst}${grn}$(echo "($res2 - $res1) / 60"|bc ) minutes ($(echo "$res2 - $res1"|bc ) seconds) ${txtrst}"
echo
echo "Press ENTER to return to the menu."
read -p ""
;;

8)
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
    lunch omni_h850-userdebug
	
  clear
  echo "============================================================"
  echo "                    Starting to compile                     "
  echo "============================================================"
	make multirom_zip # builds multirom and trampoline and installation ZIP file
	make multirom_uninstaller # builds uninstaller ZIP
echo
res2=$(date +%s.%N)
echo "${bldgrn}Total time elapsed: ${txtrst}${grn}$(echo "($res2 - $res1) / 60"|bc ) minutes ($(echo "$res2 - $res1"|bc ) seconds) ${txtrst}"
echo
echo "Press ENTER to return to the menu."
read -p ""
;;

wulsic)
clear
  echo "============================================================"
  echo "   RAINBOW MODE, PRESS ENTER TO START AND GET PIXELATED     "
  echo "============================================================"
echo "Press ENTER to continue..."
read -p ""
for i in {1..1000000}
do
tput setab 1 && sleep 0.2 && echo && tput setab 1 && sleep 0.2 && echo && tput setab 2 && sleep 0.2 && echo && tput setab 2 && sleep 0.2 && echo && tput setab 3 && sleep 0.2 && echo && tput setab 3 && sleep 0.2 && echo && tput setab 4 && sleep 0.2 && echo && tput setab 4 && sleep 0.2 && echo && tput setab 5 && sleep 0.2 && echo && tput setab 5 && sleep 0.2 && echo && tput setab 6 && sleep 0.2 && echo && tput setab 6 && sleep 0.2 && echo && tput setab 7 && sleep 0.2 && echo && tput setab 7 && sleep 0.2 && echo && tput setab 9 && sleep 0.2 && echo && tput setab 9 && sleep 0.2 && echo && tput setab 9 && sleep 0.2 && echo && tput setab 0 && sleep 0.2 && echo
done
clear ;;

111)
clear
  echo "============================================================"
  echo "             Which color do you desire my lord?             "
  echo "============================================================"
  echo 
  echo "  1 - Black  "
  echo "  2 - Red    "
  echo "  3 - Green  "
  echo "  4 - Yellow "
  echo "  5 - Blue   "
  echo "  6 - Magenta"
  echo "  7 - Cyan   "
  echo "  8 - White  "
  echo
  echo -n "Enter option: "
clear ;;

#
#---------------------------------------------------------------------------------------------------------------------------------

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
