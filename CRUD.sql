USE minitest_module3_week1;

-- -- Thêm 5 bản ghi trong bảng Address
INSERT INTO Address (address) VALUES ('Quảng Ninh');
INSERT INTO Address (address) VALUES ('Bắc Ninh');
INSERT INTO Address (address) VALUES ('Mê Linh');
INSERT INTO Address (address) VALUES ('Thái Bình');
INSERT INTO Address (address) VALUES ('Bắc Giang');

-- -- Xóa dữ liệu
-- -- DELETE FROM Address WHERE address_id = 1;
-- -- DELETE FROM Address WHERE address_id = 2;

-- -- Thêm 5 bản ghi trong bảng Classes
INSERT INTO Classes (classesName, language, description) VALUES ('C0622I1', 'Java Full-Stack', 'Khóa học Java tháng 6 năm 2022');
INSERT INTO Classes (classesName, language, description) VALUES ('C0722G1', 'Java Full-Stack', 'Khóa học Java tháng 7 năm 2022');
INSERT INTO Classes (classesName, language, description) VALUES ('C0822H1', 'Java Full-Stack', 'Khóa học Java tháng 8 năm 2022');
INSERT INTO Classes (classesName, language, description) VALUES ('C0622I1', 'JavaScript Full-Stack', 'Khóa học Java tháng 6 năm 2022');
INSERT INTO Classes (classesName, language, description) VALUES ('C0722G1', 'JavaScript Full-Stack', 'Khóa học Java tháng 7 năm 2022');

-- -- Update dữ liệu
UPDATE Classes SET description = 'Khóa học JavaScript tháng 6 năm 2022' WHERE classes_id = 4;
UPDATE Classes SET description = 'Khóa học JavaScript tháng 6 năm 2022' WHERE classes_id = 5;

-- -- Thêm 10 bản ghi trong bảng Student
INSERT INTO Students (fullName, address_id, age, phone, classes_id) VALUES ('Nguyễn Duy Phong', 1, 23, 111111, 1);
INSERT INTO Students (fullName, address_id, age, phone, classes_id) VALUES ('Đỗ Hiền Lương', 2, 24, 222222, 1);
INSERT INTO Students (fullName, address_id, age, phone, classes_id) VALUES ('Nguyễn Duy Bảnh', 3, 24, 333333, 1);
INSERT INTO Students (fullName, address_id, age, phone, classes_id) VALUES ('Đức Minh Huy', 4, 23, 444444, 1);
INSERT INTO Students (fullName, address_id, age, phone, classes_id) VALUES ('Nguyễn Hữu Quyết', 5, 21, 55555, 3);
INSERT INTO Students (fullName, address_id, age, phone, classes_id) VALUES ('Phạm Văn Hân', 5, 26, 666666, 2);
INSERT INTO Students (fullName, address_id, age, phone, classes_id) VALUES ('Phạm Huy Trung', 1, 29, 777777, 1);
INSERT INTO Students (fullName, address_id, age, phone, classes_id) VALUES ('Trương Huy Hoàng', 4, 23, 888888, 4);
INSERT INTO Students (fullName, address_id, age, phone, classes_id) VALUES ('Nguyễn Văn Hiếu', 5, 25, 999999, 2);
INSERT INTO Students (fullName, address_id, age, phone, classes_id) VALUES ('Lê Văn Hằng', 1, 29, 121212, 1);

-- -- Thêm bản ghi trong Course
INSERT INTO Course (course_name, description) values ('Module 1', 'Beginner');
INSERT INTO Course (course_name, description) values ('Module 2', 'Advange');
INSERT INTO Course (course_name, description) values ('Module 3', 'Professor');

-- -- Thêm 15 bản ghi trong bảng Point
INSERT INTO Point (course_id, students_id, point) VALUES (3, 1, 100);
INSERT INTO Point (course_id, students_id, point) VALUES (2, 1, 95);
INSERT INTO Point (course_id, students_id, point) VALUES (1, 1, 93);
INSERT INTO Point (course_id, students_id, point) VALUES (3, 2, 95);
INSERT INTO Point (course_id, students_id, point) VALUES (2, 2, 95);
INSERT INTO Point (course_id, students_id, point) VALUES (1, 2, 95);
INSERT INTO Point (course_id, students_id, point) VALUES (3, 3, 98);
INSERT INTO Point (course_id, students_id, point) VALUES (2, 3, 98);
INSERT INTO Point (course_id, students_id, point) VALUES (1, 3, 98);
INSERT INTO Point (course_id, students_id, point) VALUES (3, 4, 99);
INSERT INTO Point (course_id, students_id, point) VALUES (1, 4, 99);
INSERT INTO Point (course_id, students_id, point) VALUES (1, 5, 100);
INSERT INTO Point (course_id, students_id, point) VALUES (1, 6, 100);
INSERT INTO Point (course_id, students_id, point) VALUES (1, 7, 100);
INSERT INTO Point (course_id, students_id, point) VALUES (1, 8, 100);