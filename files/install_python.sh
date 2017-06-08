#!/bin/bash

changed=0

if [ -f /usr/bin/dnf ]; then
  rpm -q python || ( dnf install -y python ; changed=1)
elif [ -f /usr/bin/yum ]; then
  rpm -q python || ( yum install -y python ; changed=1)
else
  changed=-1
fi

exit $changed
