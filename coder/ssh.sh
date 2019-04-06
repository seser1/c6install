echo "Enter mail address"
read mail

cd ~/
mkdir .ssh
cd .ssh
ssh-keygen -t rsa -b 4096 -C $mail
