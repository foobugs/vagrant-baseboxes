#!/bin/bash

apt-get update
apt-get upgrade --assume-yes
apt-get install --only-upgrade --assume-yes linux-server linux-headers-server
