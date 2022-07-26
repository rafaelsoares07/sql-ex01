--Questão 01
SELECT users.id,users.name, cities.name as city FROM users
JOIN cities
ON users."cityId" = cities.id
WHERE cities.name = 'Rio de Janeiro';

--Questão 02
SELECT testimonials.id, t1.name as writer,t2.name as recipient,testimonials.message FROM testimonials
JOIN users t1
ON testimonials."writerId" = t1.id
JOIN users t2
ON testimonials."recipientId" = t2.id;

--Questão 03
SELECT users.id,users.name,courses.name as course,schools.name as school,educations."endDate" FROM educations
JOIN users
ON educations."userId" = users.id
JOIN courses
ON educations."courseId" = courses.id
JOIN schools
ON educations."schoolId" = schools.id
WHERE educations."userId" = '30';

--Questão 04
SELECT users.id,users.name,roles.name as role,companies.name as company,experiences."startDate" FROM experiences
JOIN users
ON experiences."userId"= users.id
JOIN companies
ON experiences."companyId"= companies.id
JOIN roles
ON experiences."roleId"=roles.id
WHERE experiences."userId"='50' AND experiences."endDate" IS NOT NULL ;