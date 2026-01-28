INSERT INTO "PersonalDetails" (first_name, last_name, personal_number, email)
VALUES
('Anna', 'Svensson', '199001011234', 'anna@yrkesco.se'),
('Erik', 'Larsson', '198505055678', 'erik@yrkesco.se'),
('Sara', 'Nilsson', '199803039999', 'sara@student.se'),
('Johan', 'Karlsson', '199702021111', 'johan@student.se'),
('Elin', 'Berg', '199611152222', 'elin@student.se'),
('Maria', 'Lind', '198212123333', 'maria@yrkesco.se');

INSERT INTO "Facility" (address, city)
VALUES
('Storgatan 1', 'Gothenburg'),
('Sveavägen 10', 'Stockholm'),
('Kungsgatan 5', 'Stockholm'),
('Universitetsvägen 3', 'Gothenburg');

INSERT INTO "Program" (program_name, description)
VALUES
('AI Developer', 'Education in AI and Machine Learning'),
('Data Engineer', 'Databases, ETL and Big Data'),
('Frontend Developer', 'Web development, UX and JavaScript');

INSERT INTO "ProgramManager" (personal_details_id)
VALUES (1), (6), (2);

INSERT INTO "Class" (class_name, program_id, program_manager_id, facility_id)
VALUES
('AI23', 1, 1, 1),
('AI24', 1, 2, 2),
('DE23', 2, 3, 3);

INSERT INTO "Student" (personal_details_id, class_id)
VALUES
(3, 1),
(4, 1),
(5, 2),
(3, 2);

INSERT INTO "Course" (course_name, course_code, credits, description)
VALUES
('Python', 'PY101', 30, 'Python programming'),
('Machine Learning', 'ML201', 40, 'Supervised and unsupervised learning'),
('Databases', 'DB101', 25, 'SQL and relational databases'),
('Web Development', 'WEB101', 20, 'HTML, CSS and JavaScript'),

-- Standalone course (BONUS)
('SQL Basics', 'SQL100', 15, 'Standalone SQL course');

INSERT INTO "Program_Course" (program_id, course_id)
VALUES
(1,1),(1,2),(1,3),
(2,1),(2,3),
(3,4);

INSERT INTO "ConsultingCompany" (company_name, organization_number, has_f_tax, hourly_rate)
VALUES
('TechConsult AB', '556677-8899', true, 900),
('AI Experts AB', '559988-1122', true, 1100),
('CodeWorks AB', '556600-3344', true, 850);


INSERT INTO "Instructor"
(personal_details_id, consulting_company_id, employment_type)
VALUES
(2, 1, 'consultant'),
(6, 2, 'consultant'),
(1, NULL, 'employee');

INSERT INTO "Course_Instructor" (instructor_id, course_id)
VALUES
(1,1),(1,2),(2,2),(2,3),(3,4);
