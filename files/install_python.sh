#!/bin/bash

if [ -f /usr/bin/dnf ]; then
  (rpm -q python3 && rpm -q python3-virtualenv) || (dnf install -y python3 python3-virtualenv ; exit 1) || exit 2
elif [ -f /usr/bin/yum ]; then
  (rpm -q python && rpm -q python-virtualenv) || (yum install -y python python-virtualenv ; exit 1) || exit 2
else
  exit 2
fi
