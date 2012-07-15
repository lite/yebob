# !/bin/sh
YEBOB_HOME=`pwd`
echo $YEBOB_HOME

# stop tomcat 
cd $YEBOB_HOME/tomcat6
./bin/shutdown.sh

# stop axis2
killall axis2server.sh

# stop hbase
cd $YEBOB_HOME/hbase-0.20.6
./bin/stop-hbase.sh 
