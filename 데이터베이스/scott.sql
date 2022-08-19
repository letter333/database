create table student (
name varchar2(20),
age number,
hakbeon varchar(20) primary key);

insert into student (hakbeon, name, age) values ('11', '안서준', 19);
insert into student (hakbeon, name, age) values ('12', '김혜민', 15);
insert into student (hakbeon, name, age) values ('13', '이범식', 16);
insert into student (hakbeon, name, age) values ('14', '오세룡', 33);

commit;

select * from student;

select * from student where age >= 10 and age < 20;

select * from student where age > 9 and age < 20;

select name "이 름" from student where age > 9 and age < 20;

delete from student where name = '최호준';

insert into student values ('박지호', 10, '123');

update student set age = 20 where name = '박지호';



create table major (
name varchar2(20),
code char(3) primary key
);

insert into major values ('컴공', '001');
insert into major values ('화공', '102');

alter table student add (code char(3));
alter table student add constraint fk_stu foreign key (code) references major(code);

insert into student values('이현민', 23, '100', '001');
insert into student values('이동준', 23, '100', '777');

commit;

select student.name "학생명", major.name "학과명", hakeon from student join major on student.code = major.code;

-- 2
insert into major values ('생공', '201');

select * from student;

insert into student values('도광현', 28, '16', '201');
insert into student values('노민영', 26, '17', '201');

--3
select age "나이", name "이름" from student where code = 001;

--4
update student set age = 20 where code = 102;

--5
delete from student where name like '이%';

