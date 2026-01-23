-- Courses taught by instructors and their company rates
SELECT
  c.course_name,
  cc.company_name,
  cc.hourly_rate
FROM "Course" c
JOIN "Course_Instructor" ci ON c.course_id = ci.course_id
JOIN "Instructor" i ON ci.instructor_id = i.instructor_id
JOIN "ConsultingCompany" cc ON i.consulting_company_id = cc.consulting_company_id;

-- Number of classes per city
SELECT
  f.city,
  COUNT(c.class_id) AS number_of_classes
FROM "Facility" f
JOIN "Class" c ON f.facility_id = c.facility_id
GROUP BY f.city;

-- Where is personal_number stored
SELECT table_name
FROM information_schema.columns
WHERE column_name = 'personal_number';