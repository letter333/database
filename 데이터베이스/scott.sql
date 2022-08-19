create table student (
name varchar2(20),
age number,
hakbeon varchar(20) primary key);

insert into student (hakbeon, name, age) values ('11', '�ȼ���', 19);
insert into student (hakbeon, name, age) values ('12', '������', 15);
insert into student (hakbeon, name, age) values ('13', '�̹���', 16);
insert into student (hakbeon, name, age) values ('14', '������', 33);

commit;

select * from student;

select * from student where age >= 10 and age < 20;

select * from student where age > 9 and age < 20;

select name "�� ��" from student where age > 9 and age < 20;

delete from student where name = '��ȣ��';

insert into student values ('����ȣ', 10, '123');

update student set age = 20 where name = '����ȣ';



create table major (
name varchar2(20),
code char(3) primary key
);

insert into major values ('�İ�', '001');
insert into major values ('ȭ��', '102');

alter table student add (code char(3));
alter table student add constraint fk_stu foreign key (code) references major(code);

insert into student values('������', 23, '100', '001');
insert into student values('�̵���', 23, '100', '777');

commit;

select student.name "�л���", major.name "�а���", hakeon from student join major on student.code = major.code;

-- 2
insert into major values ('����', '201');

select * from student;

insert into student values('������', 28, '16', '201');
insert into student values('��ο�', 26, '17', '201');

--3
select age "����", name "�̸�" from student where code = 001;

--4
update student set age = 20 where code = 102;

--5
delete from student where name like '��%';

