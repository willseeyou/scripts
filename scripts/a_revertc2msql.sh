#!/bin/bash
# Name: getc2msql.sh
# This is a shellscript for get c2mplatform.sql to hosts
#
c2msqldir=/opt/c2mplatform/c2mwebservice/src/main/resources/c2mplatform.sql

# Get c2mplatform.sql to /opt
scp root@192.168.20.47:$c2msqldir /opt

mysql -uroot -pcentling c2mplatform < /opt/c2mplatform.sql
