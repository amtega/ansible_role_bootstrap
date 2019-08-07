#!/bin/bash

if [ -f /usr/bin/dnf ]; then
  rpm -q python3 && rpm -q python3-virtualenv
  if [ $? != 0 ]; then
    output=$(export LANGUAGE=en_US && dnf install -y python3 python3-virtualenv)
    echo $output | grep -q "Complete!"
    if [ $? == 0 ]; then
      exit 1
    else
      exit 2
    fi
  fi
elif [ -f /usr/bin/yum ]; then
  rpm -q python && rpm -q python-virtualenv
  if [ $? != 0 ]; then
    output=$(export LANGUAGE=en_US && yum install -y python python-virtualenv)
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
