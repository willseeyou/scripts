#!/bin/bash
# Name: backmysql.sh
# This is a shellscript for Auto DB Backup
#
backupdir=/opt/mysqlbak

if [ ! -d "$backupdir" ]; then
  mkdir /opt/mysqlbak
fi

time="$(date +"%Y-%m-%d%H:%M:%S")"
mysqldump -u root -pcentling c2mplatform > $backupdir/c2mplatform$time.sql
