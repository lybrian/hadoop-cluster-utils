cd $HADOOP_HOME
sbin/start-dfs.sh
sbin/start-yarn.sh
cd $SPARK_HOME
sbin/start-all.sh
sbin/start-history-server.sh
