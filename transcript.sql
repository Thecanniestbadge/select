SELECT 
    Student.Stu_Tnumber,
    Stu_Lname AS 'Last Name',
    Stu_Fname AS 'First Name',
    subject.Sub_desc AS 'Subject',
    Crs_Number AS 'Course Number',
    Crs_Name AS 'Course Name',
    Term_desc AS 'Term',
    Yr_year AS 'Year',
    Grade.Grade_abbr AS 'Letter Grade',
    Grade.Grade_Desc AS 'Grade'
FROM
    Student
JOIN Completion ON Student.Stu_Tnumber = Completion.Stu_Tnumber
JOIN Course ON Completion.Crs_ID = Course.Crs_ID
JOIN Term ON Completion.Term_Code = Term.Term_Code
JOIN Subject ON Course.Sub_Abbr = Subject.Sub_abbr
JOIN Grade ON Completion.Grade_abbr = Grade.Grade_abbr
WHERE Student.Stu_Tnumber = 'T10004537'
ORDER BY Yr_year, Term_desc, Crs_Number;
;