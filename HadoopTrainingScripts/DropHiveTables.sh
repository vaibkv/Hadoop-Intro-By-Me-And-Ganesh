hive -e 'show tables' | xargs -l '{}' hive -e 'drop table {}'
