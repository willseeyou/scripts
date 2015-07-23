#!/bin/bash
# Name: getc2mcode.sh
# This is a shellscript for get c2m code to jenkins
#
c2mdir=/opt/c2mplatform

if [ ! -d "$c2mdir" ]; then
  cd /opt
  git clone git@git.dev.magicmanufactory.com:c2mplatform.git
fi

cd $c2mdir
git pull
