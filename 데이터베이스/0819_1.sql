create table samsungpeople (
id number primary key,
name varchar2(30) not null,
boss_id number
);

insert into samsungpeople values(1, '이건희', 1);
insert into samsungpeople values(2, '홍라희', 2);
insert into samsungpeople values(3, '이부진', 1);
insert into samsungpeople values(4, '이재용', 1);
insert into samsungpeople values(5, '신라호텔', 3);
insert into samsungpeople values(6, '삼성전자', 4);
insert into samsungpeople values(7, '수원삼성', 4);
insert into samsungpeople values(8, '삼성라이온즈', 4);

select * from samsungpeople;

select a.name boss, b.name name from samsungpeople a join samsungpeople b on a.id = b.boss_id;

create table employee (
sabeon number primary key,
name varchar2(20) not null,
age int,
JikGeup varchar2(30),
HP varchar2(13) unique
);

insert into employee values(1, '최호준', 30, '사장', null);
insert into employee values(001, '이동준', 34, '신입', '010-2940-1613');

insert into employee (sabeon, name, age, jikgeup) values (2, '박지호', 50, '회장');
insert into employee (hp, sabeon, name, age, jikgeup) values ('010-1234-4321', 3, '차승화', 40, '부회장');

update employee set age = 20, hp = '010-xxxx-yyyy' where sabeon = 2;
select * from employee;

select * from employee order by sabeon;
select * from employee order by age desc;

set autocommit on;

select name, jikgeup as 직급 from employee;

