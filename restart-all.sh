cd $SPARK_HOME
sbin/stop-all.sh
sbin/stop-history-server.sh
cd $HADOOP_HOME
sbin/stop-yarn.sh
sbin/start-dfs.sh

sleep 10

sbin/start-dfs.sh
sbin/start-yarn.sh
cd $SPARK_HOME
sbin/start-all.sh
sbin/start-history-server.sh
