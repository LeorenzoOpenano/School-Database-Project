//Return Courses and Grades
Select
            e.StudentID,
            e.CourseNumber,
            e.Grade,
            c.Title
          FROM
            Enroll e,
            Course c
          WHERE
            e.CourseNumber = c.CourseNum
          AND e.StudentID = ".$_POST["CWID"].";




//Return Course Info
Select
                e.CourseNumber,
                e.SectionNo,
                s.Classroom,
                s.MeetingDays,
                s.BeginTime,
                s.EndTime,
                count(e.StudentID) as sCount
              FROM
                Section s,
                Enroll e 
  WHERE 
    e.SectionNo = s.SectionNum and e.CourseNumber = s.CourseNumber
              AND e.CourseNumber = ".$_POST["Cnum"]."
              Group By e.SectionNo;
