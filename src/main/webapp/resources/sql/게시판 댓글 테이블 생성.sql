drop table board_comment;
drop sequence seq_comment_num;
create table board_comment(
comment_num number primary key, 
comment_board_num number not null, 
comment_content varchar2(500) not null, 
comment_nickname varchar2(10) not null, 
comment_date date default sysdate not null 
);



alter table board_comment
add constraint board_comment_fk
foreign key(comment_board_num) references board(num);



create sequence seq_comment_num
increment by 1 
--START WITH 1
minvalue 1
nomaxvalue
nocycle
nocache;