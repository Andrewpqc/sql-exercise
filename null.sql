-- 空值的处理
-- 在插入时该学生还没有考试成绩，取空值

-- 空值的产生
INSERT INTO SC(SNO,CNO,GRADE) VALUES('2016211129','1',NULL);
-- 在插入时，未赋值的属性，其值为空值
INSERT INTO SC(SNO,CNO) VALUES('2016211129','1');
UPDATE STUDENTS SET SDEPT=NULL WHERE SNO="2016211129";


-- 空值的判读
-- 判断一个值是否为空值，用IS NULL　或IS NOT NULL来表示。
-- 从STUDENTS表中找出漏掉了数据的学生信息
SELECT * FROM STUDENTS WHERE SNAME IS NULL OR SSEX IS NULL OR SAGE IS NULL OR SDEPT IS  NULL;

-- 属性定义或者域定义中有NOT NULL约束条件的不能取空值，加了UNIQUE限制的不能取空值，码属性不能取空值

-- 空值的算术运算、比较运算和逻辑运算
-- 空值与另一个值（包括另一个空值）的算术运算的结果为空值，空值与另一个值（包括另一个空值）的比较运算
-- 结果为UNKNOWN

-- 选出1号课程不及格的学生的学号，但是这里不包括缺考的学生，缺考的学生Grade字段为NULL
SELECT SNO FROM SC WHERE GRADE <60 AND CON = "1";
-- 如果要选出1号课程不及格和缺考的学生，可以使用下面的sql
SELECT SNO FROM SC WHERE GRADE <60 AND CON="1" UNION SELECT SNO FROM SC WHERE GRADE IS NULL AND CON="1";
-- 或者:
SELECT SON FROM SC WHERE CON="1" AND (GRADE <60 OR GRADE IS NULL);