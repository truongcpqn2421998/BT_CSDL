use quanlyhocvien;
select c.name, count(S.fullname)
from students S
         left join point p on S.id = p.student_id
         join course c on c.id = p.course_id
group by name;
select a.address, count(s.fullname)
from students S
         join address a on a.id = S.address_id
group by (address);


select c.name as courseName, avg(point) as 'Diem trung binh'
from point p
         join course c on c.id = p.course_id
group by (c.name);



select c.name as 'Tên nhóm cao nhất', avg(point)
from point p
         join course c on c.id = p.course_id
group by c.name
having avg(point) >= ALL (select avg(p.point)
                          from point p
                          group by p.course_id);

