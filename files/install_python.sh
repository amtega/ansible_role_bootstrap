#!/bin/bash

changed=0

if [ -f /usr/bin/dnf ]; then
  rpm -q python2 || ( dnf install -y python2 ; exit 1)
elif [ -f /usr/bin/yum ]; then
  rpm -q python2 || ( yum install -y python2 ; exit 1)
else
  exit -1
fi
