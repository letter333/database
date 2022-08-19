-- 시퀀스
-- 순차적으로 증가해야 하는 값이 있을 때 많이 씀
create sequence myrow;
create sequence myseq;

--순차적으로 증가하는 숫자
--drop table song;
create table song2
(i_d number primary key, title varchar2(100), price number);
--drop table singer;
create table singer2
(id number primary key, name varchar2(100), hit_song_id number,
foreign key(hit_song_id) references song2(i_d));


insert into song2 values (myrow.nextval, 'dragon night', 10000);
insert into song2 values (myrow.nextval, '신호등', 9000);
insert into song2 values (myrow.nextval, 'let it be', 8000);
insert into song2 values (myrow.nextval, 'bad guy', 7000);
insert into song2 values (myrow.nextval, '분홍신발', 5000);

select * from song2;

--hit song을 나중에 추가하려면 이렇게 내가 알고 있는 값의
-- 컬럼(=열)만 적는다.
insert into singer2(id,name) values(myseq.nextval, '이무진');
insert into singer2(id,name) values(myseq.nextval, '세카이노오와리');
insert into singer2(id,name) values(myseq.nextval, '유희열');

select * from singer2;

update singer2 set hit_song_id=2 where id =1;
update singer2 set hit_song_id=1 where id =2;

select name, title from song2 join singer2 on song2.i_d=singer2.hit_song_id;

select name, title from song2 right join singer2 on song2.i_d=singer2.hit_song_id;
select name, title from song2 left join singer2 on song2.i_d=singer2.hit_song_id;



