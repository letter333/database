-- 1
create table student2 (
name varchar2(20),
hakbeon varchar2(20) primary key,
birth varchar2(20)
);

insert into student2 values ('201621348', '������', '19980217');
insert into student2 values ('123412345', 'ȫ�浿', '20010502');

create table cloth (
 productnum varchar2(20) primary key,
 price varchar2(20),
 clothsize varchar2(20),
 texture varchar2(20)
 );
 
 insert into cloth values ('AA1', '10000', 'M', 'õ');
 insert into cloth values ('AA2', '12000', 'L', '����');
 select * from cloth;
 
 create table smartphone (
 imei char(15) primary key,
 jejosa varchar2(20),
 color varchar2(20)
 );
 
 insert into smartphone values ('353346111097366', '�Ｚ', '�ϴû�');
 insert into smartphone values ('254246311027360', '����', '�׷���');
 select * from smartphone;
 
 select name, age from student where code = '001';
 
 
 
 --ppt 1��
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
 
 insert into singer (id, name) values (seq1.nextval, '�̹���');
 insert into singer (id, name) values (seq1.nextval, '��ī�̳���͸�');
 insert into singer (id, name) values (seq1.nextval, '����ġ ��ī����');
 
insert into song values (seq2.nextval, 'dragon  night', 10000);
insert into song values (seq2.nextval, '��ȣ��', 9000);
insert into song values (seq2.nextval, 'let it be', 8000);
insert into song values (seq2.nextval, 'bad guy', 7000);
insert into song values (seq2.nextval, '��ȫ �Ź�', 5000);

update singer set hit_song_id = (select id from song where title = '��ȣ��') where name = '�̹���';
update singer set hit_song_id = (select id from song where title = 'dragon  night') where name = '��ī�̳���͸�';
select * from singer join song on singer.hit_song_id = song.id;
select * from singer left join song on singer.hit_song_id = song.id;
select * from singer right join song on singer.hit_song_id = song.id;

-- ppt 2��