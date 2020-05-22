#!/bin/bash

if [ -f /usr/bin/dnf ]; then
  rpm -q python3
  if [ $? != 0 ]; then
    output=$(export LANGUAGE=en_US && dnf install -y python3)
    echo $output | grep -q "Complete!"
    if [ $? == 0 ]; then
      exit 1
    else
      exit 2
    fi
  fi
elif [ -f /usr/bin/yum ]; then
  rpm -q python libselinux-python
  if [ $? != 0 ]; then
    output=$(export LANGUAGE=en_US && yum install -y python libselinux-python)
    echo $output | grep -q "Complete!"
    if [ $? == 0 ]; then
      exit 1
    else
      exit 2
    fi
  fi
else
  exit 2
fi
