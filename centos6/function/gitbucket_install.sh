#!/bin/bash


echo "Start installing gitbucket"

#Get package from github
echo 'Getting packages...'
wget https://github.com/gitbucket/gitbucket/releases/download/4.20.0/gitbucket.war -P /opt/gitbucket

echo 'Starting gitbucket...'
java -jar /opt/gitbucket/gitbucket.war --port=80
echo "JDK installed"
