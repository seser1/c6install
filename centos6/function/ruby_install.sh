#!/bin/bash

echo "Start installing ruby"

#Install developing packages
echo 'Installing packages...'
yum install -y openssl-devel libffi-devel readline-devel git

echo 'Cloning rbenv from git...'
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
~/.rbenv/bin/rbenv init
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile 
source ~/.bash_profile

echo 'Cloning ruby-build from git...'
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'Start rbenv'
echo `~/.rbenv/bin/rbenv install 2.4.3`
echo `~/.rbenv/bin/rbenv global 2.4.3`

echo "Ruby installed"
