#!/bin/sh

ANSIBLE_VERSION="1.9"

if ansible --version | grep ${ANSIBLE_VERSION}
then
  echo "test passed"
  exit 0
fi

echo "test failed"
exit 1

