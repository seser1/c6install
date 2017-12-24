#!/bin/bash

#Shell file for setting up CentOS6

#Function for getting y or n from standard input
function yn(){
  while true
  do
    read ANS
    case $ANS in
      "Y" | "y" | "Yes" | "YES" | "yes" ) echo 1
                  break;;
      "N" | "n" | "No" | "NO" | "no" ) echo 0
                  break;;
    esac
  done
}

echo "Start setup centOS6 [y/n]"
if [ `yn` = 0 ]; then
  scho "Exiting..."
  exit
fi

#Change iptable
echo "Change iptable [y/n]"
if [ `yn` = 1 ]; then
  sh ./function/change_iptable.sh
else
  echo "Skip changing iptable"
fi


echo "Setting has finished"

