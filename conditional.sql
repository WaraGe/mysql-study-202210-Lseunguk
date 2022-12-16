/* ===============<제어문>=====================
		1. if(조건, 조건이 참일때의 결과, 조건이 거짓일때의 결과)
*/  
select 
		id as 아이디,
    name as 이름,
    age as 나이,
    if(age between 20 and 29, '20대', '20대가 아님') as age_flag #알리아스(alias) == 별칭
from
		student_study_mst;
    
/*
		2. case 
    case 
				when 조건1 then 조건1 참일때 결과 (else if)
				when 조건2 then 조건2 참일때 결과 (else if)
				else 위의 모든 조건이 아닐 결과 (else)
		end
*/

select
		*,
    case
				when age between 10 and 19 then '10대'
				when age between 20 and 29 then '20대'
				when age between 30 and 39 then '30대'
        else '10 ~ 30 대가 아님'
		end as '나이별 구성'
from
		student_study_mst;
    
/*
		3.ifnull(null인지 확인할 대상이 null이 아니면 그대로 출력, 
    확인 대상이 null이면 출력할 결과값)
*/
select
		#if(age is null, 0, age) #age가 null이면 0을 출력하고, 0이 아니면 age를 출력하라 
    if(age is null, 0, age) as `if`,
    ifnull(age, 0) as `ifnull`
from
		student_study_mst;
    
/*
		4.nullif
    nullif(A, B) A와 B가 서로 같으면 null을결과로 출력, 다르면 A를 출력
*/
select distinct #distinct는 결과 값의 중복을 제거해줌
		if(age=26, null, age) as `if`,
    nullif(age, 26) as `nullif` #age값을 26이랑 비교해서 같으면 null을 출력, 아니면 age를 출력
from
		student_study_mst;