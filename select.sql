/*======================== <select> ======================*/
# 데이터를 조회할때 : select뒤의 컬럼을 선택을 하고, 그값만 조회할때 사용
# 색이 다른 경우 예약어라는 뜻이므로 백쿼터로 감쌈. (혹시 모를 오류를 위하여 = 정석)
select
 id,
 `name`,
 age
from
 student_study_mst 
where
		`name` like '%민'
or  `name` like '김%'; 


select
		*
from
		student_study_mst
where
		age between 25 and 30;
    
select
		*
from
		student_study_mst
where
		age >= 25
and age <= 30;


select
		*
from
		student_study_mst
where
		age not between 25 and 30;
    
select
		*
from
		student_study_mst
where
		not age = 25;
    
select
		*
from
		student_study_mst
where
		age is not null;