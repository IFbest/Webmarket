drop sequence seq_board_num;
drop table board;
create table board(
num number primary key, 
title VARCHAR2(200) not null, 
content varchar2(2000) not null, 
nickname varchar2(10) not null, 
imagename varchar2(200), 
postdate date default sysdate not null, 
commentcount number default 0 
);


create sequence seq_board_num
increment by 1  
--START WITH 1
minvalue 1
nomaxvalue
nocycle
nocache;
