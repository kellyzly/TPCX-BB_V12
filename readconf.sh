
userSettings_conf=conf/userSettings.conf
echo "*****JAVA_HOME******"
echo "configure file: conf/userSettings.conf"
grep "BIG_BENCH_JAVA="  $userSettings_conf |grep -v "#"
echo "*****HIVE DATABASE NAME*****"
echo "configure file conf/userSettings.conf"
grep "BIG_BENCH_DEFAULT_DATABASE="  $userSettings_conf|grep -v "#"
grep "BIG_BENCH_DEFAULT_ENGINE=" $userSettings_conf|grep -v "#"

hive_engineSettings_sql=engines/hive/conf/engineSettings.sql
echo "******Hive On Spark******"
echo "configure file: engines/hive/conf/engineSettings.sql"
grep "hive.execution.engine=" $hive_engineSettings_sql|grep -v "#"
echo "******SPARK_HOME******"
grep "spark.home=" $hive_engineSettings_sql|grep -v "#"

hive_engineSettings_conf=engines/hive/conf/engineSettings.conf
echo "******HIVE BINARY*****"
echo "configure file: engines/hive/conf/engineSettings.conf"
grep "BINARY" $hive_engineSettings_conf|grep -v "#"
spark_sql_engineSettings_conf=engines/spark_sql/conf/engineSettings.conf
echo "******SPARK_SQL******"
echo "configure file: engines/spark_sql/conf/engineSettings.conf"
grep "BINARY" $spark_sql_engineSettings_conf|grep -v "#"

