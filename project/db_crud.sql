-- 성별 테이블
create sequence gender_num;

insert into gender(gender_num, gender_type) values (gender_num.nextval, '남자');
insert into gender(gender_num, gender_type) values (gender_num.nextval, '여자');
insert into gender(gender_num, gender_type) values (gender_num.nextval, '비공개');
insert into gender(gender_num, gender_type) values (gender_num.nextval, '중성');

update gender set gender_type='unknown' where gender_type='비공개';
delete from gender where gender_type='중성';


-- 선호분야 테이블
create sequence prefer_num;
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '동물');
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '드라마');
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '여행');
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '게임');
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '방탈출');
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '등산');
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '호흡');
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '민트초코');
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '코딩');
insert into prefer(prefer_num, prefer_type) values (prefer_num.nextval, '백준');

update prefer set prefer_type='캠핑' where prefer_type='여행';
update prefer set prefer_type='헬스' where prefer_num=4;
delete from prefer where prefer_type='드라마';

-- 회원정보 테이블
create sequence user_num;
insert into user_info(user_num, user_id, user_password, user_nickname, user_name, user_birth, user_email, user_phonenum, user_regdate, user_profile_name, user_profile_path, user_gender_num, user_prefer_num)
values (user_num.nextval, 'letter333', 'password1', 'letter',  '오세룡',  to_date('1998-02-17', 'YYYY-MM-DD'), 'seryong12@gmail.com', '010-3194-0217', to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), null, null, 1, 1);

insert into user_info(user_num, user_id, user_password, user_nickname, user_name, user_birth, user_email, user_phonenum, user_regdate, user_profile_name, user_profile_path, user_gender_num, user_prefer_num)
values (user_num.nextval, 'jihop379', 'pa5sword2', 'errorj',  '박지호',  to_date('1995-01-14', 'YYYY-MM-DD'), 'jihop379@gmail.com', '010-1234-1234', to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), null, null, 2, 1);

insert into user_info(user_num, user_id, user_password, user_nickname, user_name, user_birth, user_email, user_phonenum, user_regdate, user_profile_name, user_profile_path, user_gender_num, user_prefer_num)
values (user_num.nextval, 'igodda0654', 'pAssword3', 'sik',  '이범식',  to_date('1990-01-01', 'YYYY-MM-DD'), 'igodda0654@gmail.com', '010-4321-4312', to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), null, null, 1, 3);

insert into user_info(user_num, user_id, user_password, user_nickname, user_name, user_birth, user_email, user_phonenum, user_regdate, user_profile_name, user_profile_path, user_gender_num, user_prefer_num)
values (user_num.nextval, 'mong', 'mong_pass', 'mong_nick',  '숭이',  to_date('2000-01-01', 'YYYY-MM-DD'), 'mong@mail.com', '010-0000-0001', to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), null, null, 1, 5);

insert into user_info(user_num, user_id, user_password, user_nickname, user_name, user_birth, user_email, user_phonenum, user_regdate, user_profile_name, user_profile_path, user_gender_num, user_prefer_num)
values (user_num.nextval, 'cowww', 'cowww_pass', 'cow_nick',  '말랑카우',  to_date('2000-01-02', 'YYYY-MM-DD'), 'cowww@mail.com', '010-0000-0002', to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), null, null, 3, 4);

insert into user_info(user_num, user_id, user_password, user_nickname, user_name, user_birth, user_email, user_phonenum, user_regdate, user_profile_name, user_profile_path, user_gender_num, user_prefer_num)
values (user_num.nextval, 'dog', 'dog_pass', 'dog_nick',  '멍이',  to_date('2000-01-03', 'YYYY-MM-DD'), 'meong@mail.com', '010-0000-0003', to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), null, null, 1, 7);

insert into user_info(user_num, user_id, user_password, user_nickname, user_name, user_birth, user_email, user_phonenum, user_regdate, user_profile_name, user_profile_path, user_gender_num, user_prefer_num)
values (user_num.nextval, 'parkjiho14', 'ppp1234', 'mint',  '박지호',  to_date('2000-01-03', 'YYYY-MM-DD'), 'jihop379@mail.com', '010-0000-0004', to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), null, null, 2, 8);

insert into user_info(user_num, user_id, user_password, user_nickname, user_name, user_birth, user_email, user_phonenum, user_regdate, user_profile_name, user_profile_path, user_gender_num, user_prefer_num)
values (user_num.nextval, 'hacker', 'strongbeom', 'hacker19',  '해커범',  to_date('2000-08-18', 'YYYY-MM-DD'), 'dark_hacker19@mail.com', '010-7808-1818', to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), null, null, 3, 9);

update user_info set user_password='drowssap' where user_password='pAssword3';
delete from user_info where user_id='letter333';

-- 게시글 테이블
create sequence post_num;
insert into post(post_num, post_created_at, post_user_num, post_title, post_content, post_writer_position, post_comment_count)
values (post_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 2, 'test title1', 'test content', null, 0);

insert into post(post_num, post_created_at, post_user_num, post_title, post_content, post_writer_position, post_comment_count)
values (post_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 3, 'test title2', 'test content22', null, 2);
    
insert into post(post_num, post_created_at, post_user_num, post_title, post_content, post_writer_position, post_comment_count)
values (post_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 2, 'test title3', 'test content33', null, 6);

insert into post(post_num, post_created_at, post_user_num, post_title, post_content, post_writer_position, post_comment_count)
values (post_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 4, 'post_mong', 'mongmongmong', null, 3);

insert into post(post_num, post_created_at, post_user_num, post_title, post_content, post_writer_position, post_comment_count)
values (post_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 5, 'post_cowww', 'cowwwwwwwwwww', null, 1);

insert into post(post_num, post_created_at, post_user_num, post_title, post_content, post_writer_position, post_comment_count)
values (post_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 6, 'post_dog', 'meong post content', null, 2);

insert into post(post_num, post_created_at, post_user_num, post_title, post_content, post_writer_position, post_comment_count)
values (post_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 2, 'popopopcatcorn', '팝캣은 귀여워', null, 9);

update post set post_writer_position='대구' where post_user_num=2;
delete from post where post_comment_count=0;

-- 댓글 테이블
create sequence comment_num;
insert into comments(comment_num, comment_created_at, comment_user_num, comment_post_num, comment_content)
values (comment_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 2, 2, 'comment1');

insert into comments(comment_num, comment_created_at, comment_user_num, comment_post_num, comment_content)
values (comment_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 3, 3, 'comment2');

insert into comments(comment_num, comment_created_at, comment_user_num, comment_post_num, comment_content)
values (comment_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 3, 2, 'comment33');

insert into comments(comment_num, comment_created_at, comment_user_num, comment_post_num, comment_content)
values (comment_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 4, 5, 'kkkkkkk');

insert into comments(comment_num, comment_created_at, comment_user_num, comment_post_num, comment_content)
values (comment_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 6, 4, 'really?');

insert into comments(comment_num, comment_created_at, comment_user_num, comment_post_num, comment_content)
values (comment_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 6, 5, 'oh my cat!');

insert into comments(comment_num, comment_created_at, comment_user_num, comment_post_num, comment_content)
values (comment_num.nextval, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 4, 7, '우와 귀엽다');

update comments set comment_content='update comment' where comment_content='comment33';
delete from comments where comment_num = 1;
