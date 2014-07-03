#!/bin/bash

apt-get update
apt-get upgrade --assume-yes
apt-get upgrade --assume-yes linux-server linux-headers-server

MAJOR_VERSION=""

# https://help.ubuntu.com/community/CheckingYourUbuntuVersion
if [ lsb_release > /dev/null 2>&1 ]
then
    # Get the major version (like "12" from the version string (like "12.04")
    MAJOR_VERSION="$(lsb_release -r | cut -f 2)"
fi

case "$MAJOR_VERSION" in 
    "12.04") 
        apt-get install --assume-yes linux-image-generic-lts-saucy linux-headers-generic-lts-saucy
        ;;
    *)
        ;;
esac
