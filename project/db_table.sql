drop table comments;
drop table post;
drop table user_info;
drop table gender;
drop table prefer;
drop sequence comment_num;
drop sequence post_num;
drop sequence user_num;
drop sequence gender_num;
drop sequence prefer_num;

-- ���� ���̺�
create table gender
(
    gender_num int primary key, -- ���� ��ȣ
    gender_type varchar2(9) unique not null -- ���� Ÿ��
);

-- ��ȣ�о� ���̺�
create table prefer
(
    prefer_num int primary key, -- ��ȣ�о� ��ȣ
    prefer_type varchar2(255) unique not null -- ��ȣ�о� ����
);

-- ȸ������ ���̺�
create table user_info
(
    user_num int primary key, -- ȸ����ȣ
    user_id varchar2(255) unique not null, --ȸ�� ���̵�
    user_password varchar2(255) not null, -- ��й�ȣ
    user_nickname varchar2(255) unique not null, -- �г���
    user_name varchar2(255) not null, -- �̸�
    user_birth varchar2(255) not null, -- �������
    user_email varchar2(255) unique not null, -- �̸���
    user_phonenum varchar(255) unique not null, -- ��ȭ��ȣ
    user_regdate varchar2(255) not null, -- ������
    user_profile_name varchar2(255), -- �����ʻ��� ���� �̸�
    user_profile_path varchar2(255), -- �����ʻ��� ���� ���
    user_gender_num int not null, -- ���� �ܷ�Ű ����
    user_prefer_num int, -- ��ȣ�о� �ܷ�Ű ����
    constraint fk_user_gender_num foreign key(user_gender_num) references gender(gender_num),
    constraint fk_user_prefer_num foreign key(user_prefer_num) references prefer(prefer_num)
);

-- �Խñ� ���̺�
create table post
(
    post_num int primary key,
    post_created_at varchar2(255) not null,
    post_user_num int, --�ܷ�Ű�� ����
    post_title varchar2(255) not null,
    post_content varchar2(255) not null,
    post_writer_position varchar2(255),
    post_comment_count int,
    constraint fk_post_user_num foreign key(post_user_num) references user_info(user_num)
);

-- ��� ���̺�
create table comments
(
    comment_num int primary key,
    comment_created_at varchar2(255) not null,
    comment_user_num int, -- �ܷ�Ű�� ����
    comment_post_num int, -- �ܷ�Ű�� ����
    comment_content varchar2(255) not null,
    constraint fk_comment_user_num foreign key(comment_user_num) references user_info(user_num),
    constraint fk_comment_post_num foreign key(comment_post_num) references post(post_num)
);