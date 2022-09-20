USE minitest_module3_week1;

-- Tìm kiếm HV có họ Nguyen
SELECT *
FROM Students
WHERE fullName like 'Nguyễn%';

-- Tìm kiếm HV có ten Anh
SELECT *
FROM Students
WHERE fullName like '%Phong';

-- Tim kiem HV có độ tuổi tư 18-15
SELECT *
FROM Students
WHERE age BETWEEN 18 AND 24;


-- Tìm kiếm HV có id là 12 hoặc 13
SELECT *
FROM Students
WHERE Students_id = 3 OR Students_id = 4;

SELECT 
    MAX(avg_point)
FROM
    (SELECT 
        AVG(point) AS avg_point
    FROM
        point
    GROUP BY course_id) AS maxPoint;

