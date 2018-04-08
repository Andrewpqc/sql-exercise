DELETE FROM <表名> [WHERE <条件>]；
-- DELETE语句删除的是满足WHERE子句条件的所有元组，如果没有WHERE子句则表示删除表中的全部元组
-- ，但是表的定义仍然在字典中，也就是说，DELETE语句删除的是表中的数据，而不是关于表的定义。
DELETE FROM STUDENTS WHERE SON="2016211129";

DELETE FROM STUDENTS;--删除STUDENTS表中的所有数据，但是保留表的定义

-- 带子查询的删除语句
DELETE FROM CS WHERE SON IN (SELECT SON FROM STUDENTS WHERE SDEPT = "CS");