#!/bin/bash

echo "start setup centOS6 [y/n]"

while true
do
  read ANS

  case $ANS in
    "Y" | "y" ) break;;
    "N" | "n" ) echo "Exiting setup..."
                exit 0;;
  esac
done

sh ./function/change_iptable.sh


