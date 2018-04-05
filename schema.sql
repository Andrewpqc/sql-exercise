-- 定义模式实际上定义了一个命名空间，在这个空间中可以进一步定义该模式包含的数据库对象，例如基本表、视图、索引等。
-- 在CREATE SCHEMA 中可以接受CREATE TABLE,CREATE VIEW,GRANT子句，也就是说用户可以在创建模式的同时在这个模式中
-- 进一步创建基本表、视图、定义授权。
CREATE SCHEMA AUTHORIZATION USER;


CREATE SCHEMA SCHEMANAME AUTHORIZATION USERNAME
CREATE TABLE TAB1(
    COL1 SMALLINT,
    COL2 INT,
    COL3 CHAR(20),
    COL4 NUMERIC(10,3),
    COL5 DECIMAL(5,2)
);

-- 删除模式
DROP SCHEMA SCHEMANAME CASCADE|RESTRICT;
-- CASCADE 删除模式下所包含的所有数据库对象
-- RESTRICT　如果删除的模式下包含有数据库对象，则放弃该删除操作;只有在该模式为空的情况下，删除操作才生效。