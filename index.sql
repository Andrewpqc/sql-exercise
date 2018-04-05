/*创建索引*/
CREATE [UNIQUE] [CLUSTER] INDEX <索引名> ON <表名>(<列名>[<次序>][,<列名>[<次序>]]...);

CREATE UNIQUE INDEX Stusno ON students(Sno);
CREATE UNIQUE INDEX Coucno ON courses(Cno);
CREATE UNIQUE INDEX SCno ON SC(Sno ASC,Cno DESC);

/*修改索引*/
ALTER INDEX <旧索引名> RENAME TO <新索引名>;

/*删除索引*/
DROP INDEX <索引名>;