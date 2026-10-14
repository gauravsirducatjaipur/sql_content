CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,

    -- PERSONAL DETAILS
    first_name      VARCHAR(50) NOT NULL,
    last_name       VARCHAR(50) NOT NULL,
    email           VARCHAR(100) UNIQUE NOT NULL,
    contact_no      VARCHAR(14),

    gender          ENUM('M', 'F', 'O') NOT NULL DEFAULT 'O',

    class           ENUM(
                        '1st','2nd','3rd','4th','5th',
                        '6th','7th','8th','9th','10th'
                    ) NOT NULL,

    age             INT CHECK (age >= 5 AND age <= 18),

    weight          FLOAT CHECK (weight > 0),

    blood_group     VARCHAR(7)
                    CHECK (
                        blood_group IN
                        ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')
                    ),

    religion        VARCHAR(40),
    address         VARCHAR(255),
    city            VARCHAR(50),

    pincode         INT
                    CHECK (pincode BETWEEN 100000 AND 999999),

    passing_status  BOOLEAN DEFAULT TRUE,

    admission_date  DATE NOT NULL,

    -- ACADEMIC DETAILS
    highest_education       VARCHAR(100),
    current_course          VARCHAR(100),
    current_year_semester   VARCHAR(50),
    school_college_name     VARCHAR(150),
    percentage_or_cgpa      VARCHAR(10),

    -- PROFESSIONAL DETAILS
    has_experience      BOOLEAN DEFAULT FALSE,

    experience_years    FLOAT DEFAULT 0
                        CHECK (
                            experience_years >= 0
                            AND experience_years <= 50
                        ),

    current_job_role    VARCHAR(100),
    skills              VARCHAR(255),

    fees                DECIMAL(10,2)
                        NOT NULL
                        CHECK (fees > 0),

    created_at          TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE student_backup AS SELECT * FROM student;


select * from student_backup;



CREATE TABLE student_alter_practice LIKE student;

INSERT INTO student_alter_practice SELECT * FROM student;


INSERT INTO student
(first_name, last_name, email, contact_no, gender, class, age, weight,
blood_group, religion, address, city, pincode, passing_status,
admission_date, highest_education, current_course, current_year_semester,
school_college_name, percentage_or_cgpa, has_experience,
experience_years, current_job_role, skills, fees)
VALUES
('Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', 'M', '10th', 16, 55.5,
'B+', 'Hindu', 'Mansarovar', 'Jaipur', 302020, TRUE,
'2026-04-01', '9th', 'Science', '10th', 'DPS Jaipur', '85%',
FALSE, 0, NULL, 'Python, SQL', 25000),

('Priya', 'Verma', 'priya@gmail.com', '9876543211', 'F', '9th', 15, 48.2,
'A+', 'Hindu', 'Vaishali Nagar', 'Jaipur', 302021, TRUE,
'2026-04-02', '8th', 'Science', '9th', 'St. Xavier School', '90%',
FALSE, 0, NULL, 'Python, HTML', 22000),

('Aman', 'Gupta', 'aman@gmail.com', '9876543212', 'M', '8th', 14, 45.0,
'O+', 'Hindu', 'Malviya Nagar', 'Jaipur', 302017, TRUE,
'2026-04-03', '7th', 'Commerce', '8th', 'DAV School', '78%',
FALSE, 0, NULL, 'SQL, Excel', 20000),

('Neha', 'Singh', 'neha@gmail.com', '9876543213', 'F', '10th', 16, 52.4,
'B-', 'Hindu', 'C-Scheme', 'Jaipur', 302001, TRUE,
'2026-04-04', '9th', 'Arts', '10th', 'MGM School', '88%',
FALSE, 0, NULL, 'HTML, CSS', 24000),

('Rohit', 'Meena', 'rohit@gmail.com', '9876543214', 'M', '7th', 13, 42.8,
'AB+', 'Hindu', 'Sanganer', 'Jaipur', 302029, TRUE,
'2026-04-05', '6th', 'Science', '7th', 'Ryan School', '75%',
FALSE, 0, NULL, 'Python', 18000),

('Vikas', 'Yadav', 'vikas@gmail.com', '9876543215', 'M', '9th', 15, 50.5,
'O+', 'Hindu', 'Jagatpura', 'Jaipur', 302025, TRUE,
'2026-04-06', '8th', 'Science', '9th', 'Tagore School', '82%',
FALSE, 0, NULL, 'Python, SQL', 21000),

('Anjali', 'Jain', 'anjali@gmail.com', '9876543216', 'F', '8th', 14, 44.6,
'A+', 'Jain', 'Bani Park', 'Jaipur', 302016, TRUE,
'2026-04-07', '7th', 'Commerce', '8th', 'Maheshwari School', '86%',
FALSE, 0, NULL, 'HTML, CSS', 19500),

('Karan', 'Kumar', 'karan@gmail.com', '9876543217', 'M', '10th', 16, 58.2,
'B+', 'Hindu', 'Pratap Nagar', 'Jaipur', 302033, TRUE,
'2026-04-08', '9th', 'Science', '10th', 'St. Anselm School', '91%',
FALSE, 0, NULL, 'Python, Java', 26000),

('Simran', 'Kaur', 'simran@gmail.com', '9876543218', 'F', '9th', 15, 49.8,
'O-', 'Sikh', 'Adarsh Nagar', 'Jaipur', 302004, TRUE,
'2026-04-09', '8th', 'Arts', '9th', 'Guru Nanak School', '84%',
FALSE, 0, NULL, 'HTML, JavaScript', 23000),

('Mohit', 'Saini', 'mohit@gmail.com', '9876543219', 'M', '7th', 13, 41.5,
'A-', 'Hindu', 'Vidhyadhar Nagar', 'Jaipur', 302039, TRUE,
'2026-04-10', '6th', 'Science', '7th', 'Kendriya Vidyalaya', '77%',
FALSE, 0, NULL, 'Python', 17500),

('Pooja', 'Agarwal', 'pooja@gmail.com', '9876543220', 'F', '10th', 16, 53.7,
'AB+', 'Hindu', 'Shastri Nagar', 'Jaipur', 302016, TRUE,
'2026-04-11', '9th', 'Commerce', '10th', 'Neerja Modi School', '89%',
FALSE, 0, NULL, 'SQL, Excel', 25000),

('Arjun', 'Rathore', 'arjun@gmail.com', '9876543221', 'M', '6th', 12, 38.9,
'B+', 'Hindu', 'Tonk Road', 'Jaipur', 302018, TRUE,
'2026-04-12', '5th', 'Science', '6th', 'St. Wilfred School', '73%',
FALSE, 0, NULL, 'Scratch, Python', 16000),

('Kavita', 'Sharma', 'kavita@gmail.com', '9876543222', 'F', '8th', 14, 46.3,
'O+', 'Hindu', 'Sodala', 'Jaipur', 302006, TRUE,
'2026-04-13', '7th', 'Arts', '8th', 'Narayana School', '81%',
FALSE, 0, NULL, 'HTML, CSS', 19000),

('Deepak', 'Choudhary', 'deepak@gmail.com', '9876543223', 'M', '9th', 15, 51.7,
'A+', 'Hindu', 'Murlipura', 'Jaipur', 302039, TRUE,
'2026-04-14', '8th', 'Science', '9th', 'DAV School', '79%',
FALSE, 0, NULL, 'Python, SQL', 21500),

('Riya', 'Mehta', 'riya@gmail.com', '9876543224', 'F', '7th', 13, 43.2,
'B-', 'Hindu', 'Lal Kothi', 'Jaipur', 302015, TRUE,
'2026-04-15', '6th', 'Commerce', '7th', 'Delhi Public School', '87%',
FALSE, 0, NULL, 'Excel, SQL', 18500),

('Suresh', 'Patel', 'suresh@gmail.com', '9876543225', 'M', '10th', 16, 60.1,
'O+', 'Hindu', 'Durgapura', 'Jaipur', 302018, TRUE,
'2026-04-16', '9th', 'Science', '10th', 'MPS School', '76%',
FALSE, 0, NULL, 'Python, C++', 24500),

('Sneha', 'Joshi', 'sneha@gmail.com', '9876543226', 'F', '9th', 15, 47.9,
'AB-', 'Hindu', 'Civil Lines', 'Jaipur', 302006, TRUE,
'2026-04-17', '8th', 'Arts', '9th', 'Maharani School', '93%',
FALSE, 0, NULL, 'HTML, CSS, JS', 22500),

('Manish', 'Bansal', 'manish@gmail.com', '9876543227', 'M', '8th', 14, 48.6,
'A+', 'Hindu', 'Mansarovar', 'Jaipur', 302020, TRUE,
'2026-04-18', '7th', 'Commerce', '8th', 'Seedling School', '80%',
FALSE, 0, NULL, 'SQL, Excel', 20500),

('Nisha', 'Kumari', 'nisha@gmail.com', '9876543228', 'F', '6th', 12, 39.7,
'O+', 'Hindu', 'Ramganj', 'Jaipur', 302003, TRUE,
'2026-04-19', '5th', 'Science', '6th', 'SVM School', '74%',
FALSE, 0, NULL, 'Python', 15500),

('Yash', 'Ahuja', 'yash@gmail.com', '9876543229', 'M', '10th', 16, 56.8,
'B+', 'Hindu', 'Raja Park', 'Jaipur', 302004, TRUE,
'2026-04-20', '9th', 'Science', '10th', 'St. Xavier School', '92%',
FALSE, 0, NULL, 'Python, SQL, Java', 27000),

('Meena', 'Soni', 'meena@gmail.com', '9876543230', 'F', '7th', 13, 42.1,
'A-', 'Hindu', 'Gopalpura', 'Jaipur', 302019, TRUE,
'2026-04-21', '6th', 'Arts', '7th', 'Maharaja School', '83%',
FALSE, 0, NULL, 'HTML, CSS', 17000),

('Ravi', 'Mishra', 'ravi@gmail.com', '9876543231', 'M', '9th', 15, 52.3,
'B+', 'Hindu', 'Vaishali Nagar', 'Jaipur', 302021, TRUE,
'2026-04-22', '8th', 'Science', '9th', 'Ryan International', '78%',
FALSE, 0, NULL, 'Python, JavaScript', 22000),

('Komal', 'Goyal', 'komal@gmail.com', '9876543232', 'F', '8th', 14, 45.8,
'O-', 'Hindu', 'C-Scheme', 'Jaipur', 302001, TRUE,
'2026-04-23', '7th', 'Commerce', '8th', 'MPS School', '88%',
FALSE, 0, NULL, 'SQL, Excel', 20000),

('Tarun', 'Singh', 'tarun@gmail.com', '9876543233', 'M', '6th', 12, 37.8,
'A+', 'Hindu', 'Sanganer', 'Jaipur', 302029, TRUE,
'2026-04-24', '5th', 'Science', '6th', 'Kendriya Vidyalaya', '71%',
FALSE, 0, NULL, 'Python', 15000),

('Isha', 'Kapoor', 'isha@gmail.com', '9876543234', 'F', '10th', 16, 51.2,
'AB+', 'Hindu', 'Malviya Nagar', 'Jaipur', 302017, TRUE,
'2026-04-25', '9th', 'Science', '10th', 'DPS Jaipur', '95%',
FALSE, 0, NULL, 'Python, SQL, HTML', 28000);



INSERT INTO student
(first_name, last_name, email, contact_no, gender, class, age, weight,
blood_group, religion, address, city, pincode, passing_status,
admission_date, highest_education, current_course, current_year_semester,
school_college_name, percentage_or_cgpa, has_experience,
experience_years, current_job_role, skills, fees)
VALUES

('Amit', 'Joshi', 'amit.joshi@gmail.com', '9876543235', 'M', '12th', 18, 64.5,
'A+', 'Hindu', 'Mansarovar', 'Jaipur', 302020, TRUE,
'2026-05-01', '10th', 'Science', '12th', 'DPS Jaipur', '82%',
FALSE, 0, NULL, 'Python, HTML, CSS', 30000),

('Ritu', 'Sharma', 'ritu.sharma@gmail.com', '9876543236', 'F', '12th', 17, 51.5,
'B+', 'Hindu', 'Vaishali Nagar', 'Jaipur', 302021, TRUE,
'2026-05-02', '10th', 'Commerce', '12th', 'St. Xavier School', '91%',
FALSE, 0, NULL, 'Excel, SQL', 28500),

('Nikhil', 'Verma', 'nikhil.verma@gmail.com', '9876543237', 'M', 'Graduate', 22, 70.2,
'O+', 'Hindu', 'Malviya Nagar', 'Jaipur', 302017, TRUE,
'2026-05-03', '12th', 'BCA', '3rd Year', 'Rajasthan University', '78%',
FALSE, 0, NULL, 'Python, SQL, Java', 45000),

('Pallavi', 'Gupta', 'pallavi.gupta@gmail.com', '9876543238', 'F', 'Graduate', 23, 55.4,
'A+', 'Hindu', 'C-Scheme', 'Jaipur', 302001, TRUE,
'2026-05-04', '12th', 'BCA', 'Final Year', 'Maharani College', '8.2 CGPA',
FALSE, 0, NULL, 'HTML, CSS, JavaScript', 48000),

('Sandeep', 'Meena', 'sandeep.meena@gmail.com', '9876543239', 'M', 'Graduate', 24, 72.1,
'B-', 'Hindu', 'Sanganer', 'Jaipur', 302029, TRUE,
'2026-05-05', 'BCA', 'MCA', '1st Year', 'Poornima University', '7.5 CGPA',
FALSE, 0, NULL, 'Python, SQL, Django', 65000),

('Kiran', 'Kaur', 'kiran.kaur@gmail.com', '9876543240', 'F', 'Diploma', 20, 50.3,
'O-', 'Sikh', 'Adarsh Nagar', 'Jaipur', 302004, TRUE,
'2026-05-06', '10th', 'Web Development', '6 Months', 'Ducat Jaipur', '85%',
FALSE, 0, NULL, 'HTML, CSS, Bootstrap', 18000),

('Varun', 'Yadav', 'varun.yadav@gmail.com', '9876543241', 'M', 'Graduate', 25, 68.7,
'AB+', 'Hindu', 'Jagatpura', 'Jaipur', 302025, TRUE,
'2026-05-07', 'BCA', 'MERN Stack', 'Advanced', 'Ducat Jaipur', '76%',
TRUE, 2, 'Web Developer', 'HTML, CSS, React, Node.js', 55000),

('Divya', 'Jain', 'divya.jain@gmail.com', '9876543242', 'F', 'Graduate', 24, 54.2,
'A-', 'Jain', 'Bani Park', 'Jaipur', 302016, TRUE,
'2026-05-08', 'BCA', 'Data Analytics', 'Advanced', 'Ducat Jaipur', '8.5 CGPA',
TRUE, 1, 'Data Analyst', 'SQL, Excel, Python, Power BI', 42000),

('Harsh', 'Kumar', 'harsh.kumar@gmail.com', '9876543243', 'M', 'Graduate', 26, 74.8,
'B+', 'Hindu', 'Pratap Nagar', 'Jaipur', 302033, FALSE,
'2026-05-09', 'B.Com', 'Python Programming', 'Intermediate', 'Ducat Jaipur', '62%',
TRUE, 3, 'Software Support Executive', 'Python, SQL, Excel', 32000),

('Simran', 'Ahuja', 'simran.ahuja@gmail.com', '9876543244', 'F', 'Postgraduate', 27, 58.6,
'O+', 'Hindu', 'Raja Park', 'Jaipur', 302004, TRUE,
'2026-05-10', 'BCA', 'MCA', 'Completed', 'Rajasthan University', '8.7 CGPA',
TRUE, 2, 'Software Developer', 'Java, SQL, Spring Boot', 70000),

('Mohit', 'Rathore', 'mohit.rathore@gmail.com', '9876543245', 'M', 'Graduate', 23, 66.1,
'AB-', 'Hindu', 'Tonk Road', 'Jaipur', 302018, TRUE,
'2026-05-11', '12th', 'BBA', 'Final Year', 'Jaipur National University', '72%',
FALSE, 0, NULL, 'Excel, Communication', 52000),

('Sneha', 'Patel', 'sneha.patel@gmail.com', '9876543246', 'F', 'Graduate', 22, 49.9,
'B+', 'Hindu', 'Durgapura', 'Jaipur', 302018, TRUE,
'2026-05-12', '12th', 'B.Com', '2nd Year', 'Rajasthan University', '81%',
FALSE, 0, NULL, 'Tally, Excel, Accounting', 35000),

('Deepak', 'Saini', 'deepak.saini@gmail.com', '9876543247', 'M', 'Graduate', 28, 76.3,
'O+', 'Hindu', 'Vidhyadhar Nagar', 'Jaipur', 302039, TRUE,
'2026-05-13', 'B.Tech', 'Full Stack Development', 'Advanced', 'Ducat Jaipur', '7.8 CGPA',
TRUE, 4, 'Senior Web Developer', 'React, Node.js, MongoDB, SQL', 60000),

('Pooja', 'Mishra', 'pooja.mishra@gmail.com', '9876543248', 'F', 'Graduate', 25, 53.8,
'A+', 'Hindu', 'Shastri Nagar', 'Jaipur', 302016, TRUE,
'2026-05-14', 'B.Sc', 'Data Science', 'Intermediate', 'Poornima University', '79%',
TRUE, 2, 'Junior Data Analyst', 'Python, Pandas, SQL', 50000),

('Rakesh', 'Choudhary', 'rakesh.choudhary@gmail.com', '9876543249', 'M', 'Diploma', 21, 69.5,
'B-', 'Hindu', 'Murlipura', 'Jaipur', 302039, TRUE,
'2026-05-15', '12th', 'Java Programming', 'Advanced', 'Ducat Jaipur', '74%',
FALSE, 0, NULL, 'Java, JDBC, MySQL', 26000),

('Megha', 'Mehta', 'megha.mehta@gmail.com', '9876543250', 'F', 'Postgraduate', 29, 57.2,
'AB+', 'Hindu', 'Lal Kothi', 'Jaipur', 302015, TRUE,
'2026-05-16', 'MBA', 'Business Analytics', 'Completed', 'Jaipur National University', '8.1 CGPA',
TRUE, 5, 'Business Analyst', 'Excel, SQL, Power BI', 75000),

('Akash', 'Bansal', 'akash.bansal@gmail.com', '9876543251', 'M', 'Graduate', 24, 71.4,
'A-', 'Hindu', 'Mansarovar', 'Jaipur', 302020, TRUE,
'2026-05-17', 'BCA', 'Cloud Computing', 'Intermediate', 'Poornima University', '68%',
FALSE, 0, NULL, 'Python, Linux, AWS', 46000),

('Nidhi', 'Kumari', 'nidhi.kumari@gmail.com', '9876543252', 'F', 'Graduate', 23, 52.7,
'O-', 'Hindu', 'Ramganj', 'Jaipur', 302003, FALSE,
'2026-05-18', '12th', 'BCA', '2nd Year', 'Rajasthan University', '58%',
FALSE, 0, NULL, 'C, Python', 40000),

('Yogesh', 'Agarwal', 'yogesh.agarwal@gmail.com', '9876543253', 'M', 'Graduate', 27, 73.6,
'B+', 'Hindu', 'Gopalpura', 'Jaipur', 302019, TRUE,
'2026-05-19', 'B.Tech', 'Cyber Security', 'Advanced', 'Ducat Jaipur', '8.0 CGPA',
TRUE, 3, 'Security Analyst', 'Python, Linux, Networking', 58000),

('Isha', 'Kapoor', 'isha.kapoor2@gmail.com', '9876543254', 'F', 'Graduate', 22, 50.8,
'A+', 'Hindu', 'Malviya Nagar', 'Jaipur', 302017, TRUE,
'2026-05-20', '12th', 'BCA', '1st Year', 'Rajasthan University', '86%',
FALSE, 0, NULL, 'HTML, CSS, JavaScript', 42000),

('Rahul', 'Verma', 'rahul.verma@gmail.com', '9876543255', 'M', 'Graduate', 30, 78.5,
'O+', 'Hindu', 'Vaishali Nagar', 'Jaipur', 302021, TRUE,
'2026-05-21', 'MCA', 'Software Engineering', 'Completed', 'Rajasthan University', '8.9 CGPA',
TRUE, 6, 'Project Manager', 'Java, SQL, Agile, Leadership', 90000),

('Ananya', 'Singh', 'ananya.singh@gmail.com', '9876543256', 'F', 'Diploma', 19, 47.6,
'B+', 'Hindu', 'Sanganer', 'Jaipur', 302029, TRUE,
'2026-05-22', '10th', 'Graphic Designing', '6 Months', 'Ducat Jaipur', '88%',
FALSE, 0, NULL, 'Photoshop, Illustrator', 20000),

('Manoj', 'Mishra', 'manoj.mishra@gmail.com', '9876543257', 'M', 'Graduate', 26, 70.9,
NULL, 'Hindu', 'Civil Lines', 'Jaipur', 302006, TRUE,
'2026-05-23', 'B.Com', 'SQL and Database', 'Advanced', 'Ducat Jaipur', '75%',
TRUE, 2, 'Database Developer', 'MySQL, SQL Server, Python', 38000),

('Shreya', 'Goyal', 'shreya.goyal@gmail.com', '9876543258', 'F', 'Graduate', 24, 55.1,
'AB+', 'Hindu', 'C-Scheme', 'Jaipur', 302001, NULL,
'2026-05-24', 'BCA', 'Artificial Intelligence', 'Intermediate', 'Poornima University', '8.4 CGPA',
FALSE, 0, NULL, 'Python, Machine Learning', 62000),

('Pranav', 'Soni', 'pranav.soni@gmail.com', '9876543259', 'M', 'Graduate', 25, 67.8,
'B+', 'Hindu', 'Jagatpura', 'Jaipur', 302025, TRUE,
'2026-05-25', 'B.Tech', 'MERN Stack', 'Advanced', 'Ducat Jaipur', NULL,
TRUE, 2, 'Frontend Developer', 'React, JavaScript, Bootstrap', 54000);







SELECT * FROM student;
SELECT * FROM student_backup;
SELECT * FROM student_alter_practice;

-- drop table student_backup;
-- drop table student_alter_practice;



ALTER TABLE student_alter_practice ADD COLUMN award VARCHAR(50);

desc student_alter_practice;








