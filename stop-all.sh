cd $SPARK_HOME
sbin/stop-all.sh
sbin/stop-history-server.sh
cd $HADOOP_HOME
sbin/stop-yarn.sh
sbin/stop-dfs.sh
