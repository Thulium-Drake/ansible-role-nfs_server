#!/bin/bash
# Create a homedir
. /etc/profile.d/01_mknfshome.conf.sh

echo "Creating homedir for $HOME_USER"
cp -r "$HOME_SKEL" "$HOME_PATH/$HOME_USER"
chown -R $HOME_USER: "$HOME_PATH/$HOME_USER"
chmod 0700 "$HOME_PATH/$HOME_USER"
systemctl restart sssd autofs
echo "Your homedirectory has been created, you can now sign in on other Linux systems."
