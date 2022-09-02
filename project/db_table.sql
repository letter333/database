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

-- 성별 테이블
create table gender
(
    gender_num int primary key, -- 성별 번호
    gender_type varchar2(9) unique not null -- 성별 타입
);

-- 선호분야 테이블
create table prefer
(
    prefer_num int primary key, -- 선호분야 번호
    prefer_type varchar2(255) unique not null -- 선호분야 종류
);

-- 회원정보 테이블
create table user_info
(
    user_num int primary key, -- 회원번호
    user_id varchar2(255) unique not null, --회원 아이디
    user_password varchar2(255) not null, -- 비밀번호
    user_nickname varchar2(255) unique not null, -- 닉네임
    user_name varchar2(255) not null, -- 이름
    user_birth varchar2(255) not null, -- 생년월일
    user_email varchar2(255) unique not null, -- 이메일
    user_phonenum varchar(255) unique not null, -- 전화번호
    user_regdate varchar2(255) not null, -- 가입일
    user_profile_name varchar2(255), -- 프로필사진 파일 이름
    user_profile_path varchar2(255), -- 프로필사진 파일 경로
    user_gender_num int not null, -- 성별 외래키 설정
    user_prefer_num int, -- 선호분야 외래키 설정
    constraint fk_user_gender_num foreign key(user_gender_num) references gender(gender_num),
    constraint fk_user_prefer_num foreign key(user_prefer_num) references prefer(prefer_num)
);

-- 게시글 테이블
create table post
(
    post_num int primary key,
    post_created_at varchar2(255) not null,
    post_user_num int, --외래키로 설정
    post_title varchar2(255) not null,
    post_content varchar2(255) not null,
    post_writer_position varchar2(255),
    post_comment_count int,
    constraint fk_post_user_num foreign key(post_user_num) references user_info(user_num)
);

-- 댓글 테이블
create table comments
(
    comment_num int primary key,
    comment_created_at varchar2(255) not null,
    comment_user_num int, -- 외래키로 설정
    comment_post_num int, -- 외래키로 설정
    comment_content varchar2(255) not null,
    constraint fk_comment_user_num foreign key(comment_user_num) references user_info(user_num),
    constraint fk_comment_post_num foreign key(comment_post_num) references post(post_num)
);