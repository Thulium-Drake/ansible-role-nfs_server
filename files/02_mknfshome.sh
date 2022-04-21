#!/bin/bash
# Helper script for creating homedirs
. /etc/profile.d/01_mknfshome.conf.sh

if [ $UID -gt $MIN_UID ]
then
  if [ ! -d "$HOME_PATH/$HOME_USER" ]
  then
    sudo /exports/mkhome.sh
    cd ~
  fi
fi
