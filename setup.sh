# !/bin/sh
YEBOB_HOME=`pwd`
echo $YEBOB_HOME

# set /etc/hosts
# 127.0.0.1 debian localhost test.yebob.com

# apache config
# cp $YEBOB_HONE/conf/a2/default /etc/apache2/sites-available
# a2ensite default

# hbase config
cp $YEBOB_HOME/conf/hbase-site.xml $YEBOB_HOME/hbase-0.20.6/conf/
cp $YEBOB_HOME/conf/regionservers $YEBOB_HOME/hbase-0.20.6/conf/

# pi config
cp $YEBOB_HOME/conf/pi/build.xml $YEBOB_HOME/svn/pi/com.yebob.game.web/

# sns config
cp $YEBOB_HOME/conf/hbase-site.xml $YEBOB_HOME/svn/sns/com.yebob.sns.web/conf/
cp $YEBOB_HOME/conf/regionservers $YEBOB_HOME/svn/sns/com.yebob.sns.web/conf/
cp $YEBOB_HOME/conf/sns/build.xml $YEBOB_HOME/svn/sns/com.yebob.sns.web/
#cp $YEBOB_HOME/conf/sns/web.xml $YEBOB_HOME/svn/sns/com.yebob.sns.web/WebContent/WEB-INF

# create hbase
cd $YEBOB_HOME/hbase-0.20.6
./bin/hbase com.yebob.pi.analytics.persistence.entity.hb020.TableFactory
./bin/hbase com.yebob.group.analytics.persistence.entity.hb020.TableFactory
./bin/hbase com.yebob.pi.persistence.entity.hb020.TableFactory
