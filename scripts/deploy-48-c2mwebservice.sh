#!/bin/sh

tomcat_pid=`/usr/sbin/lsof -n -P -t -i :8082`
[ -n "$tomcat_pid" ] && kill -9 $tomcat_pid

rm -rf /opt/apache-tomcat-7/webapps/c2mwebservice*
rm -rf /opt/apache-tomcat-7/logs/*

scp root@192.168.20.47:/opt/jenkins/jenkins_home/workspace/C2M_WEBSERVICE_BUILD_DEV_48/c2mwebservice/target/c2mwebservice.war root@192.168.20.48:/opt/apache-tomcat-7/webapps/
