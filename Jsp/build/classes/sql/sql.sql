select * from DEPARTMENTS;


create table jdbc_member
(
	id varchar2(50),
	pw varchar2(50) not null,
	nickname varchar2(50),
	constraint jdbc_id_pk primary key(id)
);

insert into jdbc_member
values ('smhrd', '1234','smhrd');

update jdbc_member set pw= '', nick = '', where id='';

select * from jdbc_member;

delete from jdbc_member where id='shgudgh';

-- 실행할 부분을 드래그 -> 블록지정
-- alt + X

select * from jdbc_member where id = 'ss1212' and pw = '123123'