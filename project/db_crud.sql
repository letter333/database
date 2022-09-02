-- ���� ���̺�
create sequence gender_num;

insert into gender(gender_num, gender_type) values (gender_num.nextval, '����');
insert into gender(gender_num, gender_type) values (gender_num.nextval, '����');
insert into gender(gender_num, gender_type) values (gender_num.nextval, '�����');
insert into gender(gender_num, gender_type) values (gender_num.nextval, '�߼�');

update gender set gender_type='unknown' where gender_type='�����';
delete from gender where gender_type='�߼�';


-- ��ȣ�о� ���̺�
create sequence prefer_num;
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '����');
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '���');
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '����');

update prefer set prefer_type='ķ��' where prefer_type='����';
delete from prefer where prefer_type='���';

-- ȸ������ ���̺�
create sequence user_num;
insert into user_info(user_num, user_id, user_password, user_nickname, user_name, user_birth, user_email, user_phonenum, user_regdate, user_profile_name, user_profile_path, user_gender_num, user_prefer_num)
values (user_num.nextval, 'letter333', 'password1', 'letter',  '������',  to_date('1998-02-17', 'YYYY-MM-DD'), 'seryong12@gmail.com', '010-3194-0217', to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), null, null, 1, 1);

insert into user_info(user_num, user_id, user_password, user_nickname, user_name, user_birth, user_email, user_phonenum, user_regdate, user_profile_name, user_profile_path, user_gender_num, user_prefer_num)
values (user_num.nextval, 'jihop379', 'pa5sword2', 'errorj',  '����ȣ',  to_date('1995-01-14', 'YYYY-MM-DD'), 'jihop379@gmail.com', '010-1234-1234', to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), null, null, 2, 1);

insert into user_info(user_num, user_id, user_password, user_nickname, user_name, user_birth, user_email, user_phonenum, user_regdate, user_profile_name, user_profile_path, user_gender_num, user_prefer_num)
values (user_num.nextval, 'igodda0654', 'pAssword3', 'sik',  '�̹���',  to_date('1990-01-01', 'YYYY-MM-DD'), 'igodda0654@gmail.com', '010-4321-4312', to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), null, null, 1, 3);

update user_info set user_password='drowssap' where user_password='pAssword3';
delete from user_info where user_id='letter333';

-- �Խñ� ���̺�
create sequence post_num;
insert into post(post_num, post_created_at, post_user_num, post_title, post_content, post_writer_position, post_comment_count)
values (post_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 2, 'test title1', 'test content', null, 0);

insert into post(post_num, post_created_at, post_user_num, post_title, post_content, post_writer_position, post_comment_count)
values (post_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 3, 'test title2', 'test content22', null, 2);
    
insert into post(post_num, post_created_at, post_user_num, post_title, post_content, post_writer_position, post_comment_count)
values (post_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 2, 'test title3', 'test content33', null, 6);

update post set post_writer_position='�뱸' where post_user_num=2;
delete from post where post_comment_count=0;

-- ��� ���̺�
create sequence comment_num;
insert into comments(comment_num, comment_created_at, comment_user_num, comment_post_num, comment_content)
values (comment_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 2, 2, 'comment1');
insert into comments(comment_num, comment_created_at, comment_user_num, comment_post_num, comment_content)
values (comment_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 3, 3, 'comment2');
insert into comments(comment_num, comment_created_at, comment_user_num, comment_post_num, comment_content)
values (comment_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 3, 2, 'comment33');

update comments set comment_content='update comment' where comment_content='comment33';
delete from comments where comment_num = 1;