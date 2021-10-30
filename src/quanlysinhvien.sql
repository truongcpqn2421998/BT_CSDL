use quanlysinhvien;
select * from student
where StudentName like 'h%';
select * from class
where MONTH(StartDate)=12;
select * from subject
where Credit>=3 AND Credit<=5;
select  s.StudentName,s2.SubName,Mark
from ((mark  join student s on mark.StudentId = s.StudentId ) join subject s2 on Mark.SubId=s2.SubId)
order by Mark desc,StudentName;
