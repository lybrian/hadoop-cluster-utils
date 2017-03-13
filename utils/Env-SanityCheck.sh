#!/bin/bash
SPARK_DIR=/home/user1/spark-2.0.1-bin-hadoop2.7
WORK_DIR=/home/user1/tpcds-setup
EXPECTED_RUNTIME=60sec

echo "###### show slave file: ----------------------------------------------"
cat $SPARK_DIR/conf/slaves


echo "###### show jvm processes ..."
/home/user1/hadoop-cluster-utils/utils/checkall.sh

echo "###### show SMT mode ..."
for i in {1..5}; do
echo "----- slavehost${i}: ------------------------------------------------------"
ssh root@slavehost${i}lab "ppc64_cpu --smt"
done;


echo "###### show nmon process ..."
for i in {1..5}; do
echo "----- slavehost${i}: ------------------------------------------------------"
ssh root@slavehost${i}lab  "ps aux | grep nmon"
done;

echo "###### show shell processes ..."
for i in {1..5}; do
echo "----- slavehost${i}: ------------------------------------------------------"
ssh root@slavehost${i}lab   "ps aux | grep '\.sh'"
done;

########################################
#### workload baseline test ############
########################################

#cd $WORK_DIR
#echo "run sanity test? [ctrl-c to exit]"
#read varAnswer
#### set the 1+3 setting
#echo "expected runtime: $EXPECTED_RUNTIME"
#nohup  ./home/user1/tpcds-setup/run_single_spark.sh q19, q42,q43,q52,q55,q63, q68, q73 
#nohup  /home/user1/tpcds-setup/run_single_spark.sh q73 1 40 10 63 tpcds_1tb
#nohup  ./201-runFull-smt4-snappy.sh q19x10 &
