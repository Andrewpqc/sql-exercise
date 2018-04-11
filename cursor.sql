#创建一个游标，MySQL,DB2,MariaDB,SQL Server版本
declare CustCursor Cursor
for 
select * from customers
where cust_email is NULL;

#Oracle,PostgreSQL版本
declare cursor CustCursor
is
select * from Customers 
where cust_email is NULL;

#使用游标
Open cursor CustCursor;
