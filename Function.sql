USE minitest_module3_week1;

-- Thống kê số lượng học viên các lớp (count)
SELECT Classes.Classes_id, Classes.ClassesName, COUNT('Số lượng')
FROM Students, Classes
WHERE Students.Classes_Id = Classes.Classes_Id
GROUP BY ClassesName;


-- Thống kê số lượng học viên tại các tỉnh (count)
SELECT Address.Address_id, Address.Address, COUNT('Số lượng')
FROM Address, Students
WHERE Students.Address_id = Address.Address_id
GROUP BY Address_Id;

-- Tính điểm trung bình của các khóa học (avg)
SELECT C.course_Id, C.course_name, AVG(Point)
FROM Course C JOIN point P
ON C.Course_Id = P.Course_Id
GROUP BY C.Course_Id, C.Course_name;

-- Đưa ra khóa học có điểm trung bình cao nhất (max)
SELECT C.course_Id, C.course_name, AVG(Point)
FROM Course C JOIN point P
ON C.Course_Id = P.Course_Id
GROUP BY C.Course_Id, C.Course_name
HAVING AVG(point) >= ALL(SELECT AVG(point) FROM point GROUP BY point.course_id );
