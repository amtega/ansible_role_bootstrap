#!/bin/bash

changed=0

if [ -f /usr/bin/dnf ]; then
  rpm -q python2 || ( dnf install -y python2 ; changed=1)
elif [ -f /usr/bin/yum ]; then
  rpm -q python2 || ( yum install -y python2 ; changed=1)
else
  changed=-1
fi

exit $changed
