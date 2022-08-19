-- 1
create table student2 (
name varchar2(20),
hakbeon varchar2(20) primary key,
birth varchar2(20)
);

insert into student2 values ('201621348', '오세룡', '19980217');
insert into student2 values ('123412345', '홍길동', '20010502');

create table cloth (
 productnum varchar2(20) primary key,
 price varchar2(20),
 clothsize varchar2(20),
 texture varchar2(20)
 );
 
 insert into cloth values ('AA1', '10000', 'M', '천');
 insert into cloth values ('AA2', '12000', 'L', '가죽');
 select * from cloth;
 
 create table smartphone (
 imei char(15) primary key,
 jejosa varchar2(20),
 color varchar2(20)
 );
 
 insert into smartphone values ('353346111097366', '삼성', '하늘색');
 insert into smartphone values ('254246311027360', '애플', '그레이');
 select * from smartphone;
 
 select name, age from student where code = '001';
 
 
 
 --ppt 1번
 create sequence seq1;
 create sequence seq2;
 
 create table song (
 id int primary key,
 title varchar2(60) not null,
 price int
 );
 
 create table singer (
 id int primary key,
 name varchar2(30)
 );
 
 alter table singer add (hit_song_id int); 
 alter table singer add constraint fk_song foreign key (hit_song_id) references song(id);
 
 insert into singer (id, name) values (seq1.nextval, '이무진');
 insert into singer (id, name) values (seq1.nextval, '세카이노오와리');
 insert into singer (id, name) values (seq1.nextval, '유이치 사카모토');
 
insert into song values (seq2.nextval, 'dragon  night', 10000);
insert into song values (seq2.nextval, '신호등', 9000);
insert into song values (seq2.nextval, 'let it be', 8000);
insert into song values (seq2.nextval, 'bad guy', 7000);
insert into song values (seq2.nextval, '분홍 신발', 5000);

update singer set hit_song_id = (select id from song where title = '신호등') where name = '이무진';
update singer set hit_song_id = (select id from song where title = 'dragon  night') where name = '세카이노오와리';
select * from singer join song on singer.hit_song_id = song.id;
select * from singer left join song on singer.hit_song_id = song.id;
select * from singer right join song on singer.hit_song_id = song.id;

-- ppt 2번