#!/bin/sh

PACKAGE_LIST=package.list

# Install packages from list
sudo apt-get install $(cat ${PACKAGE_LIST})
