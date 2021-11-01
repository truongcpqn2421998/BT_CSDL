use quanlysinhvien;
select S.SubName,MAX(Credit),S.Status
from subject S;

select S.SubName, max(Mark)
from subject S join mark m on S.SubId = m.SubId;

select * ,avg(m.Mark)
from student S
         join mark m on S.StudentId = m.StudentId
group by S.StudentName
order by avg(m.Mark) DESC;