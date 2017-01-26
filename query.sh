qfile=$1
#export SPARK_HOME=/home/zly/prj/oss/spark.release/spark-2.0.2-bin-hadoop2.7/
rm -rf logs/q*$qfile*
./bin/bigBench runQuery -m 7 -q $qfile -U >runQuery.txt 2>&1
