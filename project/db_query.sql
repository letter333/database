-- ȸ����ȣ�� ���̵�� �ۼ��� ��� �ҷ����� join
select user_name �ۼ����̸�, user_id �ۼ��ھ��̵�, user_num �ۼ���ȸ����ȣ, comment_content �ۼ����, comment_num �ۼ���۹�ȣ 
from user_info join comments on user_info.user_num = comments.comment_user_num and user_info.user_id='igodda0654';

-- ȸ����ȣ�� ���̵�� �ۼ��� �� �ҷ����� join
select user_name �ۼ����̸�, user_id �ۼ��ھ��̵�, user_num �ۼ���ȸ����ȣ, post_content �ۼ��Խñ�, post_num �Խñ۹�ȣ, post_title �Խñ����� 
from user_info join post on user_info.user_num = post.post_user_num and user_info.user_id='jihop379';

-- �� ������ ���� ������ �� join, group by
select count(*), user_info.user_gender_num, gender.gender_type 
from user_info join gender on user_info.user_gender_num = gender.gender_num 
group by gender.gender_num, gender.gender_type, user_info.user_gender_num 
order by user_gender_num;

-- ���ϴ� ���� ������ �� join, group by having
select count(*), user_info.user_gender_num, gender.gender_type 
from user_info join gender on user_info.user_gender_num = gender.gender_num 
group by gender.gender_num, gender.gender_type, user_info.user_gender_num having gender_type='����'
order by user_gender_num;