-- 单表查询
SELECT Sno,Sname FROM students;

SELECT * FROM students;

SELECT Sname,2014-Sage FROM students;--注意这里的第二列是一个算术表达式

SELECT Sname NAME,"Year Of Birth:" BIRTH,2014-Sage BIRTHDAY LOWER(Sdept) DEPARTMENT FROM students;

-- 去重
SELECT DISTINCT Son FROM SC;

SELECT Sname,Sage FROM students WHERE Sdept="SC";

SELECT Sname,Sage FROM students WHERE Sage <20;

SELECT DISTINCT Sno FROM SC WHERE Grade < 60;

SELECT Sname,Sdept,Sage FROM students WHERE Sage BETWEEN 20 AND 23;

SELECT Sname,Sdept,Sage FROM students WHERE Sage NOT BETWEEN 20 AND 23;

SELECT Sname,Ssex FROM students WHERE Sdept IN ("CS","MA","IS");

SELECT Sname,Ssex FROM students WHERE Sdept NOT IN ("CS","MA","IS");

SELECT * FROM students WHERE Son LIKE "201215121";

-- LIKE后面的匹配串中不包含通配符的时候，可以用=(等于)运算符取代like谓词，用!=或<>运算符取代NOT LIKE

-- 查询所有姓刘的学生的信息
SELECT * FROM students WHERE Sname LIKE "刘%";

-- 查询姓欧阳，且名字为3个字的学生的信息
SELECT * FROM students WHERE Sname LIKE "欧阳_";
 
--  查询名字中第二个字为“阳”的学生的信息
SELECT * FROM students WHERE Sname LIKE "_阳%";

-- 如果用户要查询的字符串本身就含有通配符%或_,这时就要使用ESCAPE 短语对通配符进行转义
SELECT * FROM Course WHERE Cname LIKE "DB\_Design" ESCAPE "\";
 