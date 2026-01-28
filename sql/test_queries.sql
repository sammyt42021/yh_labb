-- Program manager per class
SELECT
  c.class_name,
  pd.first_name,
  pd.last_name
FROM "Class" c
JOIN "ProgramManager" pm ON c.program_manager_id = pm.program_manager_id
JOIN "PersonalDetails" pd ON pm.personal_details_id = pd.personal_details_id;

--This query demonstrates how students are linked to classes and personal details using foreign keys
SELECT
  c.class_name,
  pd.first_name,
  pd.last_name
FROM "Student" s
JOIN "PersonalDetails" pd ON s.personal_details_id = pd.personal_details_id
JOIN "Class" c ON s.class_id = c.class_id;

-- Programs and their courses
SELECT
  p.program_name,
  c.course_name
FROM "Program" p
JOIN "Program_Course" pc ON p.program_id = pc.program_id
JOIN "Course" c ON pc.course_id = c.course_id;

-- Number of courses per program
SELECT
  p.program_name,
  COUNT(pc.course_id) AS number_of_courses
FROM "Program" p
JOIN "Program_Course" pc ON p.program_id = pc.program_id
GROUP BY p.program_name;

SELECT
  c.course_name
FROM "Course" c
LEFT JOIN "Program_Course" pc
  ON c.course_id = pc.course_id
WHERE pc.program_id IS NULL;


