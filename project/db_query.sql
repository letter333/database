-- 회원번호와 아이디로 작성한 댓글 불러오기 join
select user_name 작성자이름, user_id 작성자아이디, user_num 작성자회원번호, comment_content 작성댓글, comment_num 작성댓글번호 
from user_info join comments on user_info.user_num = comments.comment_user_num and user_info.user_id='igodda0654';

-- 회원번호와 아이디로 작성한 글 불러오기 join
select user_name 작성자이름, user_id 작성자아이디, user_num 작성자회원번호, post_content 작성게시글, post_num 게시글번호, post_title 게시글제목 
from user_info join post on user_info.user_num = post.post_user_num and user_info.user_id='jihop379';

-- 각 성별에 따른 유저의 수 join, group by
select count(*), user_info.user_gender_num, gender.gender_type 
from user_info join gender on user_info.user_gender_num = gender.gender_num 
group by gender.gender_num, gender.gender_type, user_info.user_gender_num 
order by user_gender_num;

-- 원하는 성별 유저의 수 join, group by having
select count(*), user_info.user_gender_num, gender.gender_type 
from user_info join gender on user_info.user_gender_num = gender.gender_num 
group by gender.gender_num, gender.gender_type, user_info.user_gender_num having gender_type='남자'
order by user_gender_num;