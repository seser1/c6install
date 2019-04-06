#!/bin/bash


echo "Start installing JDK"

#Get package from oracle.com
echo 'Getting packages...'
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.rpm -P /tmp

echo 'Installing JDK...'
rpm -ihv /tmp/jdk-8u161-linux-x64.rpm

echo "JDK installed"
