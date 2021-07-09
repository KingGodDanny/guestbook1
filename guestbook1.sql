drop table guestbook;

drop sequence seq_guestbook_id;

create table guestbook (
    guestbook_id number(10),
    name varchar2(80),
    password varchar2(20),
    content varchar2(2000),
    reg_date date,
    PRIMARY KEY(guestbook_id)
);

create sequence seq_guestbook_id
increment by 1
start with 1
nocache;

select  guestbook_id,
        name,
        password,
        content,
        to_char(reg_date, 'YYYY-MM-DD HH24:MI:SS') regDate
from guestbook
order by guestbook_id asc;

select *
from guestbook;


delete from guestbook
where guestbook_id = 1
and password = 'dsfsd';

rollback;