#!/bin/sh

tomcat_pid=`/usr/sbin/lsof -n -P -t -i :8082`
[ -n "$tomcat_pid" ] && kill -9 $tomcat_pid

rm -rf /opt/apache-tomcat-7/webapps/c2mmanage*
rm -rf /opt/apache-tomcat-7/logs/*

/opt/c2m_scripts/a_bakmysql.sh
/opt/c2m_scripts/a_getc2mcode.sh
/opt/c2m_scripts/a_revertc2msql.sh


scp root@192.168.20.47:/opt/jenkins/jenkins_home/workspace/C2M_MANAGE_BUILD_TEST_47/c2mmanage/target/c2mmanage.war root@192.168.20.47:/opt/apache-tomcat-7/webapps/

/opt/apache-tomcat-7/bin/startup.sh
