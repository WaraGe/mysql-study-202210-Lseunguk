/*
		DML 메서드 (4개)
    insert C 데이터 추가
		select R 데이터 조회 
    update U 데이터 수정
    delete D 데이터 삭제
*/
TRUNCATE score_mst;
#insert

set sql_safe_updates = 0;
-- primary key가 있어야 수정이 가능함
select * from student_study_mst;

/*======================== <insert> ======================*/

#key, value값을 순서에 맞게 student_study_mst에 넣기  [벨류들이기때문에 's' 필수]
insert into student_study_mst
		(id, name, age) 
values
		(1,'이성욱', 26); 
insert into student_study_mst(name, id, age) values('김규민', 2, 26); 
insert into student_study_mst(name, id) values('순동', 3); 
insert into student_study_mst values(4, '김혜진', 26); 
insert into student_study_mst(name, id) values('박경호', 1); 


#여러개의 데이터 한번에 넣는 방법
#데이터 베이스에서는 큰따움표 사용X 문자열 무조건 작은 따움표 '' 
insert into student_study_mst
values
		(5,'윤도영', 25),
		(6,'홍성욱', 25),
		(7,'김경민', 32),
		(8,'정혜민', 26);
    
/*======================== <update> ======================*/

select * from student_study_mst;

update student_study_mst
set
#set에서 쓰면 대입연산자 
		name = '정순동',
    age = 22
where
#where에서 쓰면 비교연산자 
		id = 3;
    
update student_study_mst
set
		age = age+ 1
where
		id = 6;
    
        
/*======================== <delete> ======================*/

select * from student_study_mst;

delete
from
		student_study_mst
where
		id = 1;

/*======================== <select> ======================*/