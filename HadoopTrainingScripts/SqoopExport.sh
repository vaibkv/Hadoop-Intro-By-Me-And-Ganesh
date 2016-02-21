sqoop export --connect 'jdbc:sqlserver://172.20.2.73;username=testdev;password=testdev;database=X;' --table hiveExport --export-dir '/user/hive/warehouse/hivetable1' --columns empname,desig,salary
