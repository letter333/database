-- ������
-- ���������� �����ؾ� �ϴ� ���� ���� �� ���� ��
create sequence myrow;
create sequence myseq;

--���������� �����ϴ� ����
--drop table song;
create table song2
(i_d number primary key, title varchar2(100), price number);
--drop table singer;
create table singer2
(id number primary key, name varchar2(100), hit_song_id number,
foreign key(hit_song_id) references song2(i_d));


insert into song2 values (myrow.nextval, 'dragon night', 10000);
insert into song2 values (myrow.nextval, '��ȣ��', 9000);
insert into song2 values (myrow.nextval, 'let it be', 8000);
insert into song2 values (myrow.nextval, 'bad guy', 7000);
insert into song2 values (myrow.nextval, '��ȫ�Ź�', 5000);

select * from song2;

--hit song�� ���߿� �߰��Ϸ��� �̷��� ���� �˰� �ִ� ����
-- �÷�(=��)�� ���´�.
insert into singer2(id,name) values(myseq.nextval, '�̹���');
insert into singer2(id,name) values(myseq.nextval, '��ī�̳���͸�');
insert into singer2(id,name) values(myseq.nextval, '����');

select * from singer2;

update singer2 set hit_song_id=2 where id =1;
update singer2 set hit_song_id=1 where id =2;

select name, title from song2 join singer2 on song2.i_d=singer2.hit_song_id;

select name, title from song2 right join singer2 on song2.i_d=singer2.hit_song_id;
select name, title from song2 left join singer2 on song2.i_d=singer2.hit_song_id;



