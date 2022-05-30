DROP TABLE products CASCADE CONSTRAINTS;
create table products (
	productId varchar2(20) primary key, 
	pname varchar2(20) not null, 
	unitPrice number not null, 
	description varchar2(100) not null, 
	manufacturer varchar2(20) not null, 
	category varchar2(20) not null, 
	unitsInStock number default 0 not null, 
	condition varchar2(20) not null, 
	filename varchar2(100) default 0
);