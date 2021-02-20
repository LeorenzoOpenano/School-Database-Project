//Return Professor Schedule
Select
            Course.Title,
            Section.Classroom,
                Section.MeetingDays,
            Section.BeginTime,
            Section.EndTime
          FROM
            Section,
            Course
          WHERE Section.CourseNumber = Course.CourseNum
          AND Section.PSSN = '".$_POST["pssn"]."';

//Return Grades
 Select
                Grade,
                Count(Grade) as GradeCount
              FROM
                Enroll
              WHERE SectionNo = ".$_POST["Snum"]."
              AND CourseNumber = ".$_POST["Cnum"]."
              Group By Grade;
