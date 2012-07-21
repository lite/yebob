# !/bin/sh
YEBOB_HOME=`pwd`
echo $YEBOB_HOME

# sns deploy
cd $YEBOB_HOME/svn/sns/com.yebob.sns.web/ 
ant deploy

# start axis2
#cd $YEBOB_HOME/axis2-1.5.1
#./bin/axis2server.sh &

# start hbase
cd $YEBOB_HOME/hbase-0.20.6
./bin/start-hbase.sh 

# start tomcat
cd $YEBOB_HOME/tomcat6
./bin/startup.sh

# start apache2
# apachectl restart
