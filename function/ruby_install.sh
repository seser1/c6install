#!/bin/bash

echo "Start installing ruby"

#Install developing packages
yum install -y gcc make openssl-devel libffi-devel readline-devel git

cd /opt/
git clone -y git://github.com/sstephenson/rbenv.git
mkdir /opt/rbenv/plugins
cd /opt/rbenv/plugins
git clone -y git://github.com/sstephenson/ruby-build.git

export RBENV_ROOT="/opt/rbenv"
export PATH="${RBENV_ROOT}/bin:${PATH}"
eval "$(rbenv init -)"

#There must be rebooting

rbenv install -l
rbenv install 2.2.3
rbenv global 2.2.3
ruby -v

echo "ruby installed"
