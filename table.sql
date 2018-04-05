CREATE TABLE students(
    Sno CHAR(9) PRIMARY KEY,--主键，列级完整性约束条件
    Sname CHAR(20) UNIQUE,--取值唯一，列级别完整性约束条件
    Ssex CHAR(2),
    Sage SMALLINT,
    Sdept CHAR(20)
);


CREATE TABLE courses(
    Cno CHAR(4) PRIMARY KEY,
    Cname CHAR(40) NOT NULL,
    Cpno CHAR(4),
    Ccredit SMALLINT,
    FOREIGN KEY(Cpno) REFERENCES courses(Cno) --表级完整性约束条件，Cpno是外码，被参照表是courses，被参照列是Cno
    --这里参照表和被参照表是同一个表
);

CREATE TABLE StoC(
    Sno CHAR(9),
    Cno CHAR(4),
    Grade SMALLINT,
    PRIMARY KEY(Sno,Cno),/*主码由两个属性构成，必须作为表级完整性进行定义*/
    FOREIGN KEY(Sno) REFERENCES students(Sno),
    FOREIGN key(Cno) REFERENCES courses(Cno)
);

ALTER TABLE <TABLE NAME>
[ADD [COLUME] <新列名><数据类型>[完整性约束条件]]
[ADD <表级别的完整性约束条件>]
[DROP [COLUME] <列名>[CASCADE|RESTRICT]]
[DROP CONSTRAINT  <完整性约束名>[RESTRICT|CASCADE]]
[ALTER COLUME <列名><数据类型>]；