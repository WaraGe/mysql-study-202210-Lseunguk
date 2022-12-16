/*
		서브쿼리()
    select 안에서 select 하는 방법
*/
/*
문제 : 서울대를 다니는 학생을 찾으시오
*/

#1번이 서울대인것을 알고 있을때
select 
		*
from
		student_mst
where
		school_id = 1;
    
#2
select
		*
from
		student_mst sm
		left outer join school_mst scm on(scm.school_id = sm.school_id)
where
		scm.school_name like '서울대%';

#서브쿼리 사용시
select
		*
from
		student_mst
where
		school_id in (select 
										school_id 
								from 
										school_mst
								where 
										school_name like '서울대'
								or	school_name like '부산대%');
                
#in 저중에 하나라도 포함되어 있으면 출력
select
		*
from
		student_mst
where
		school_id in (1,3);

select
		*,
    (select school_name from school_mst scm where scm.school_id = stm.school_id) as 번호
from
		student_mst stm;

#쿼리의 결과 경과 시간을 볼수있음
set profiling = 1;
show profiles;


select
		*,
    (select count(*) from student_mst) as 총인원
from
		student_mst;
    
    
select 
		*
from
		student_mst sm
    left outer join (select count(*) as 총원 from student_mst) sc on ( 1 = 1 );
    
show profiles;