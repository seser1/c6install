#!/bin/bash

#Shell file for setting up CentOS6

#Function for getting y or n from standard input
function yn(){
  while true
  do
    read ANS
    case $ANS in
      "Y" | "y" | "Yes" | "YES" | "yes" )
        echo 1
        break;;
      "N" | "n" | "No" | "NO" | "no" )
        echo 0
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
  sh ./function/iptable_change.sh
else
  echo "Skip changing iptable"
fi

#ruby install
echo "Install ruby [y/n]"
if [ `yn` = 1 ]; then
  sh ./function/ruby_install.sh
else
  echo "Skip installing ruby"
fi

echo "Setting has finished"

