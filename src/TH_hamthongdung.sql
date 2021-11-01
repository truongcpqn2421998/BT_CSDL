use quanlysinhvien;
SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
FROM Student
GROUP BY Address;

SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S
         join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;

SELECT S.StudentId,S.StudentName, AVG(Mark) as TB
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
having TB>15;

SELECT S.StudentId,S.StudentName, AVG(Mark) as TB
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
having TB >= ALL(select avg(Mark) from mark group by mark.StudentId)