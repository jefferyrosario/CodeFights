CREATE PROCEDURE gradeDistribution()
BEGIN
SELECT Name, ID
FROM Grades
WHERE (Final > Midterm1*.50 + Midterm2*.50) and (Final > Midterm1*.25 + Midterm2*.25 + Final*.50)
ORDER BY substr(Name, 1, 3) ASC
;
END
