create table samsungpeople (
id number primary key,
name varchar2(30) not null,
boss_id number
);

insert into samsungpeople values(1, '�̰���', 1);
insert into samsungpeople values(2, 'ȫ����', 2);
insert into samsungpeople values(3, '�̺���', 1);
insert into samsungpeople values(4, '�����', 1);
insert into samsungpeople values(5, '�Ŷ�ȣ��', 3);
insert into samsungpeople values(6, '�Ｚ����', 4);
insert into samsungpeople values(7, '�����Ｚ', 4);
insert into samsungpeople values(8, '�Ｚ���̿���', 4);

select * from samsungpeople;

select a.name boss, b.name name from samsungpeople a join samsungpeople b on a.id = b.boss_id;

create table employee (
sabeon number primary key,
name varchar2(20) not null,
age int,
JikGeup varchar2(30),
HP varchar2(13) unique
);

insert into employee values(1, '��ȣ��', 30, '����', null);
insert into employee values(001, '�̵���', 34, '����', '010-2940-1613');

insert into employee (sabeon, name, age, jikgeup) values (2, '����ȣ', 50, 'ȸ��');
insert into employee (hp, sabeon, name, age, jikgeup) values ('010-1234-4321', 3, '����ȭ', 40, '��ȸ��');

update employee set age = 20, hp = '010-xxxx-yyyy' where sabeon = 2;
select * from employee;

select * from employee order by sabeon;
select * from employee order by age desc;

set autocommit on;

select name, jikgeup as ���� from employee;

