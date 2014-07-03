#!/bin/bash

apt-get update
apt-get upgrade --assume-yes
apt-get install --only-upgrade --assume-yes linux-server linux-headers-server

# ensure the correct kernel headers are installed
#apt-get -y install linux-headers-$(uname -r)

# update package index on boot
#cat <<EOF > /etc/init/refresh-apt.conf
#description "update package index"
#start on networking
#task
#exec /usr/bin/apt-get update
#EOF
