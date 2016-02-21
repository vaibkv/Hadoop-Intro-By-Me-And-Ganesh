sqoop import --connect 'jdbc:sqlserver://172.20.2.73;username=testdev;password=testdev;database=X' --table TestData --target-dir /user/cloudera/TestData/ --split-by n1 -m 2
