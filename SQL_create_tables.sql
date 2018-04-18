CREATE DATABASE TPCH;
--USE TPCH;
CREATE TABLE Region (
	regionkey INTEGER PRIMARY KEY,
	name CHAR(25),
	comment VARCHAR(152)
);


CREATE TABLE Nation (
	nationkey INTEGER PRIMARY KEY,
	name CHAR(25),
	regionkey INTEGER,                                                                                                                                                                                                                                                                                                              
	comment VARCHAR(152),
	
	--�����е�regionkey��Region���е�regionkey�����
	FOREIGN KEY(regionkey) REFERENCES Region(regionkey)
);

CREATE TABLE Part (
	partkey INTEGER PRIMARY KEY,
	name VARCHAR(55),
	mfgr CHAR(25),
	brand CHAR(10),
	ptype VARCHAR(25),
	size INTEGER,
	container CHAR(10),
	retailprice REAL,
	comment VARCHAR(23)
);

CREATE TABLE Supplier (
	suppkey INTEGER PRIMARY KEY,
	name CHAR(25),
	saddress VARCHAR(40),
	nationkey INTEGER, --foreignkey nationakey,
	phone CHAR(15),
	acctbal REAL,
	comment VARCHAR(101),
	
	--�����е�nationkey��Nation���е�nationkey�����
	FOREIGN KEY(nationkey) REFERENCES Nation(nationkey)
	
	
);

CREATE TABLE PartSupp (
	partkey INTEGER, --PARTKEY��suppkey����������
	suppkey INTEGER, --suppkey������
	availqty INTEGER,
	supplycost REAL,
	comment VARCHAR,
	
	--partkey,suppkey�ֱ���Part���е�partkey��Supplier���е�suppkey�����
	--partkey,suppkey������������
	PRIMARY KEY(partkey,suppkey),
	FOREIGN KEY(partkey) REFERENCES Part(partkey),
	FOREIGN KEY(suppkey) REFERENCES Supplier(suppkey)
);

CREATE TABLE Customer (
	custkey INTEGER PRIMARY KEY,
	name VARCHAR(25),
	custaddress VARCHAR(40),
	nationkey INTEGER,--nationkey���
	phone CHAR(15),
	acctbal REAL,
	mktsegment CHAR(10),
	comment VARCHAR(117),
	
	--�����е�nationkey��Nation���е�nationkey�����
	FOREIGN KEY(nationkey) REFERENCES Nation(nationkey)
);

CREATE TABLE Orders (
	orderkey INTEGER PRIMARY KEY,
	custkey INTEGER,--custkey�����
	orderstatus CHAR(1),
	totalprice REAL,
	orderdate DATE,
	orderpriority CHAR(15),
	clerk CHAR(15),
	shippriority INTEGER,
	comment VARCHAR(79),
	
	--�����е�custkey��Customer���е�custkey�����
	FOREIGN KEY(custkey) REFERENCES Customer(custkey)
);

CREATE TABLE Lineitem (
	orderkey INTEGER, 
	partkey INTEGER,
	suppkey INTEGER,
	linenumber INTEGER,
	quantity REAL,
	extendedprice REAL,
	discount REAL CHECK (discount between 0.00 and 1.00),
	tax REAL CHECK (tax between 0.00 and 0.08),
	returnflag CHAR(1),
	linestatus CHAR(1),
	shipdate DATE,
	commitdate DATE,
	receiptdate DATE,
	shipinstruct CHAR(25),
	shipmode CHAR(10),
	comment VARCHAR(44),
	
	--�����е�orderkey��Orders���е�orderkey�ֶε����
	--orderkey��linenumber������������
	--partkey,suppkey���ɸ������
	PRIMARY KEY(orderkey,linenumber),
	FOREIGN KEY(orderkey) REFERENCES Orders(orderkey),
	FOREIGN KEY(partkey,suppkey) REFERENCES PartSupp(partkey,suppkey)
	
);

