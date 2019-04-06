# go

gofile="o1.12.2.linux-amd64.tar.gz"

cd /tmp
wget https://dl.google.com/go/{$gofile}
tar vzfx $gofile -C /usr/local/
cd ~/
cat << EOF >> .bashrc

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
EOF
source .bashrc
