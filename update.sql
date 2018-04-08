UPDATE <表名> SET <列名>＝<表达式>[,<列名>＝<表达式>]... [WHERE <条件>]；

-- 修改某一个元组的值
UPDATE STUDENTS SET SAGE = 19 WHERE SON="2016211129";

-- 修改多个元组的值
-- 将所有的学生的年龄增加一岁
UPDATE STUDENTS SAGE =SAGE+1;

-- 带子查询的修改语句
-- 将计算机学院的所有学生的成绩置0
UPDATE SC  SET GRADE=0 WHERE SON IN (SELECT SON FROM STUDENTS WHERE SDEPT = "CS");

