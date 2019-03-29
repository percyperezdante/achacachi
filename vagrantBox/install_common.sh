#!/bin/bash

# Update repository
apt-get update

# Installing tools
apt-get install vim curl wget git -y

# Add percy account
# To test connectiviy:
#  $ vagrant ports
#  $ ssh -p 2201 ACCOUT@localhost -i $PATH/PRIVATE_KEY
#

ACCOUNT=percy
HOME="/home/"$ACCOUNT

useradd -m $ACCOUNT -s /bin/bash
mkdir $HOME/.ssh
chmod 700 $HOME/.ssh
cp /tmp/shared/.ssh/id_rsa*  $HOME/.ssh/
cat $HOME/.ssh/id_rsa.pub > $HOME/.ssh/authorized_keys
chown -R $ACCOUNT:$ACCOUNT $HOME

# Adding sudo permisson
echo "${ACCOUNT} ALL = (ALL) NOPASSWD: ALL" > /etc/sudoers.d/$ACCOUNT

cat id_rsa.pub.percy > $HOME/.ssh/authorized_keys
