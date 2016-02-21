file1 = load '/home/cloudera/Scripts/stdfile.txt' USING PigStorage('\n') as (line);

list1 = FOREACH file1 GENERATE FLATTEN(TOKENIZE(line)) AS word;

file2 = load '/home/cloudera/Scripts/testfile.txt' USING PigStorage('\n') as (line);

list2 = FOREACH file2 GENERATE FLATTEN(TOKENIZE(line)) AS word;

commonlist = join list1 by word RIGHT OUTER, list2 by word;

distlist = DISTINCT commonlist;

filterlist = filter distlist by list1::word is null; 

--describe commonlist;

store distlist into 'newDir';
