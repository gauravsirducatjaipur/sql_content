```
create database practiceset1;
use practiceset1;

CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    gender CHAR(1),
    age INT,
    blood_group VARCHAR(5),
    city VARCHAR(50),
    address VARCHAR(100),
    department VARCHAR(50),
    job_role VARCHAR(50),
    salary DECIMAL(10,2),
    experience_years INT,
    hire_date DATE,
    education VARCHAR(50),
    manager_name VARCHAR(100),
    employment_status VARCHAR(20)
);

INSERT INTO employees VALUES
(1,'Aarav','Sharma','aarav.sharma@example.com','9876500001','M',25,'B+','Jaipur','Malviya Nagar','IT','Software Developer',55000,3,'2022-01-15','B.Tech','Rohit Sharma','Active'),
(2,'Aditi','Verma','aditi.verma@example.com','9876500002','F',28,'A+','Delhi','Rohini','HR','HR Executive',45000,5,'2020-03-12','MBA','Neha Kapoor','Active'),
(3,'Aman','Gupta','aman.gupta@example.com','9876500003','M',32,'O+','Mumbai','Andheri','Finance','Accountant',62000,8,'2018-06-20','M.Com','Amit Verma','Active'),
(4,'Ananya','Singh','ananya.singh@example.com','9876500004','F',24,'B-','Pune','Baner','Marketing','SEO Specialist',42000,2,'2023-02-10','BBA','Priya Mehta','Active'),
(5,'Amit','Kumar','amit.kumar@example.com','9876500005','M',35,'AB+','Bengaluru','Whitefield','IT','IT Manager',95000,12,'2015-08-01','M.Tech','Rohit Sharma','Active'),
(6,'Anita','Mehta','anita.mehta@example.com','9876500006','F',29,'O-','Jaipur','Mansarovar','Sales','Sales Executive',40000,6,'2019-04-18','B.Com','Karan Singh','Active'),
(7,'Arjun','Patel','arjun.patel@example.com','9876500007','M',27,'A-','Delhi','Dwarka','IT','Web Developer',58000,4,'2021-07-22','BCA','Rohit Sharma','Active'),
(8,'Bhavna','Jain','bhavna.jain@example.com','9876500008','F',31,'B+','Mumbai','Bandra','HR','Recruiter',51000,7,'2018-09-14','MBA','Neha Kapoor','Active'),
(9,'Chirag','Rao','chirag.rao@example.com','9876500009','M',26,'O+','Pune','Hinjewadi','IT','QA Engineer',48000,3,'2022-05-11','B.Tech','Rohit Sharma','Active'),
(10,'Deepak','Yadav','deepak.yadav@example.com','9876500010','M',38,'AB-','Bhopal','Arera Colony','Finance','Finance Manager',88000,14,'2013-11-05','MBA','Amit Verma','Active'),
(11,'Divya','Kapoor','divya.kapoor@example.com','9876500011','F',23,'A+','Jaipur','Vaishali Nagar','Support','Customer Support Executive',30000,1,'2024-01-08','B.A.','Sonia Jain','Active'),
(12,'Farah','Khan','farah.khan@example.com','9876500012','F',30,'B-','Delhi','Saket','Marketing','Content Writer',47000,6,'2019-10-17','M.A.','Priya Mehta','Active'),
(13,'Gaurav','Agrawal','gaurav.agrawal@example.com','9876500013','M',40,'O+','Jaipur','Mansarovar','Training','Corporate Trainer',75000,15,'2014-08-08','MCA','Ravi Patel','Active'),
(14,'Harsh','Malhotra','harsh.malhotra@example.com','9876500014','M',27,'A+','Mumbai','Powai','IT','Database Administrator',68000,5,'2020-12-01','B.Tech','Rohit Sharma','Active'),
(15,'Isha','Nair','isha.nair@example.com','9876500015','F',25,'AB+','Bengaluru','Indiranagar','Research','Data Analyst',60000,3,'2022-04-25','M.Sc.','Meera Nair','Active'),
(16,'Karan','Joshi','karan.joshi@example.com','9876500016','M',33,'B+','Delhi','Lajpat Nagar','Sales','Sales Manager',82000,10,'2016-02-16','MBA','Karan Singh','Active'),
(17,'Kavita','Bansal','kavita.bansal@example.com','9876500017','F',29,'O-','Lucknow','Gomti Nagar','HR','HR Manager',72000,8,'2017-06-30','MBA','Neha Kapoor','Active'),
(18,'Komal','Mishra','komal.mishra@example.com','9876500018','F',22,'A-','Pune','Kothrud','IT','Software Developer',38000,1,'2024-07-01','B.Tech','Rohit Sharma','Active'),
(19,'Lokesh','Saini','lokesh.saini@example.com','9876500019','M',36,'B+','Bhopal','MP Nagar','Operations','Operations Manager',79000,12,'2015-03-21','MBA','Vikas Gupta','Active'),
(20,'Meera','Reddy','meera.reddy@example.com','9876500020','F',26,'O+','Hyderabad','Gachibowli','Finance','Financial Analyst',56000,4,'2021-09-09','M.Com','Amit Verma','Active'),
(21,'Mohit','Agarwal','mohit.agarwal@example.com','9876500021','M',28,'A+','Jaipur','Malviya Nagar','IT','Web Developer',61000,5,'2020-02-14','MCA','Rohit Sharma','Active'),
(22,'Muskan','Kaur','muskan.kaur@example.com','9876500022','F',24,'B+','Delhi','Rohini','Marketing','Digital Marketing Executive',39000,2,'2023-05-17','BBA','Priya Mehta','Active'),
(23,'Neha','Gupta','neha.gupta@example.com','9876500023','F',34,'O-','Mumbai','Dadar','HR','Recruiter',59000,10,'2016-11-11','MBA','Neha Kapoor','Active'),
(24,'Nikhil','Chopra','nikhil.chopra@example.com','9876500024','M',31,'AB+','Pune','Wakad','IT','System Analyst',74000,8,'2017-12-04','B.Tech','Rohit Sharma','Active'),
(25,'Nisha','Saxena','nisha.saxena@example.com','9876500025','F',27,'A-','Lucknow','Aliganj','Support','Technical Support Engineer',44000,4,'2021-08-19','BCA','Sonia Jain','Active'),
(26,'Nitin','Shah','nitin.shah@example.com','9876500026','M',29,'B-','Ahmedabad','Navrangpura','Finance','Accountant',52000,6,'2019-01-13','M.Com','Amit Verma','Active'),
(27,'Pankaj','Tiwari','pankaj.tiwari@example.com','9876500027','M',42,'O+','Delhi','Dwarka','Admin','Admin Manager',85000,18,'2010-05-05','MBA','Ravi Patel','Active'),
(28,'Payal','Garg','payal.garg@example.com','9876500028','F',23,'A+','Jaipur','Jagatpura','Sales','Sales Executive',32000,1,'2024-03-04','B.Com','Karan Singh','Active'),
(29,'Pooja','Jain','pooja.jain@example.com','9876500029','F',32,'B+','Bengaluru','Whitefield','IT','QA Engineer',65000,9,'2016-08-23','B.Tech','Rohit Sharma','Active'),
(30,'Priya','Singh','priya.singh@example.com','9876500030','F',35,'AB-','Mumbai','Andheri','Marketing','Marketing Manager',90000,11,'2014-10-10','MBA','Priya Mehta','Active'),
(31,'Rahul','Verma','rahul.verma@example.com','9876500031','M',26,'O+','Jaipur','Mansarovar','IT','Software Developer',52000,3,'2022-06-16','B.Tech','Rohit Sharma','Active'),
(32,'Raj','Mehta','raj.mehta@example.com','9876500032','M',30,'B+','Delhi','Saket','Finance','Payroll Executive',49000,7,'2018-01-20','B.Com','Amit Verma','Active'),
(33,'Rakesh','Yadav','rakesh.yadav@example.com','9876500033','M',39,'A+','Bhopal','Kolar Road','Operations','Operations Manager',81000,15,'2012-09-15','MBA','Vikas Gupta','Active'),
(34,'Ravi','Patel','ravi.patel@example.com','9876500034','M',28,'O-','Pune','Baner','IT','Web Developer',59000,5,'2020-07-07','BCA','Rohit Sharma','Active'),
(35,'Reena','Thomas','reena.thomas@example.com','9876500035','F',25,'B-','Chennai','Adyar','HR','HR Executive',41000,3,'2022-11-12','MBA','Neha Kapoor','Active'),
(36,'Ritu','Chopra','ritu.chopra@example.com','9876500036','F',37,'AB+','Delhi','Rohini','Sales','Account Manager',76000,13,'2013-04-24','MBA','Karan Singh','Active'),
(37,'Rohan','Das','rohan.das@example.com','9876500037','M',24,'A+','Kolkata','Salt Lake','Research','Research Analyst',43000,2,'2023-09-18','M.Sc.','Meera Nair','Active'),
(38,'Sahil','Arora','sahil.arora@example.com','9876500038','M',29,'O+','Gurugram','Sector 45','IT','Database Administrator',69000,6,'2019-02-28','MCA','Rohit Sharma','Active'),
(39,'Sakshi','Bedi','sakshi.bedi@example.com','9876500039','F',26,'B+','Jaipur','Vaishali Nagar','Marketing','SEO Specialist',46000,4,'2021-10-01','BBA','Priya Mehta','Active'),
(40,'Sameer','Khan','sameer.khan@example.com','9876500040','M',34,'A-','Mumbai','Powai','Support','Support Team Lead',63000,10,'2016-05-13','BCA','Sonia Jain','Active'),
(41,'Sandeep','Rathore','sandeep.rathore@example.com','9876500041','M',41,'O+','Jaipur','Mansarovar','Training','Technical Trainer',78000,16,'2011-07-19','MCA','Ravi Patel','Active'),
(42,'Simran','Kaur','simran.kaur@example.com','9876500042','F',22,'B-','Delhi','Dwarka','HR','Recruiter',35000,1,'2024-06-01','BBA','Neha Kapoor','Active'),
(43,'Sneha','Reddy','sneha.reddy@example.com','9876500043','F',28,'AB+','Hyderabad','Madhapur','IT','Software Developer',64000,5,'2020-09-16','B.Tech','Rohit Sharma','Active'),
(44,'Sonia','Paul','sonia.paul@example.com','9876500044','F',33,'O-','Kolkata','New Town','Finance','Financial Analyst',67000,9,'2016-03-17','MBA','Amit Verma','Active'),
(45,'Tanvi','Desai','tanvi.desai@example.com','9876500045','F',24,'A+','Ahmedabad','Satellite','Marketing','Content Writer',37000,2,'2023-01-25','M.A.','Priya Mehta','Active'),
(46,'Tanya','Bhatia','tanya.bhatia@example.com','9876500046','F',31,'B+','Pune','Hinjewadi','IT','System Analyst',73000,8,'2017-04-12','M.Tech','Rohit Sharma','Active'),
(47,'Tarun','Goyal','tarun.goyal@example.com','9876500047','M',27,'O+','Lucknow','Gomti Nagar','Sales','Business Development Executive',44000,4,'2021-12-20','BBA','Karan Singh','Active'),
(48,'Varun','Mishra','varun.mishra@example.com','9876500048','M',36,'AB-','Delhi','Saket','Admin','Office Administrator',62000,12,'2014-06-26','B.Com','Ravi Patel','Active'),
(49,'Vikas','Gupta','vikas.gupta@example.com','9876500049','M',30,'A-','Mumbai','Bandra','IT','IT Support Specialist',51000,7,'2018-10-30','BCA','Rohit Sharma','Active'),
(50,'Yash','Kapoor','yash.kapoor@example.com','9876500050','M',23,'B+','Jaipur','Jagatpura','Research','Data Analyst',39000,1,'2024-02-12','B.Sc.','Meera Nair','Active');

INSERT INTO employees VALUES
(51,'Aarav','Mehta','aarav.mehta@example.com','9876500051','M',28,'B+','Jaipur','Malviya Nagar','IT','Software Developer',58000,5,'2020-04-15','B.Tech','Rohit Sharma','Active'),
(52,'Aditi','Shah','aditi.shah@example.com','9876500052','F',26,'A+','Mumbai','Andheri','HR','HR Executive',46000,4,'2021-07-10','MBA','Neha Kapoor','Active'),
(53,'Aman','Jain','aman.jain@example.com','9876500053','M',31,'O+','Delhi','Rohini','Finance','Financial Analyst',65000,8,'2018-03-20','M.Com','Amit Verma','Active'),
(54,'Ananya','Rao','ananya.rao@example.com','9876500054','F',24,'B-','Pune','Baner','Marketing','SEO Specialist',42000,2,'2023-02-12','BBA','Priya Mehta','Active'),
(55,'Anil','Patel','anil.patel@example.com','9876500055','M',38,'AB+','Bengaluru','Whitefield','IT','IT Manager',98000,14,'2012-08-01','M.Tech','Rohit Sharma','Active'),
(56,'Anita','Gupta','anita.gupta@example.com','9876500056','F',29,'O-','Jaipur','Mansarovar','Sales','Sales Executive',41000,6,'2019-04-18','B.Com','Karan Singh','Active'),
(57,'Arjun','Verma','arjun.verma@example.com','9876500057','M',27,'A-','Delhi','Dwarka','IT','Web Developer',59000,4,'2021-07-22','BCA','Rohit Sharma','Active'),
(58,'Bhavna','Sharma','bhavna.sharma@example.com','9876500058','F',32,'B+','Mumbai','Bandra','HR','Recruiter',53000,8,'2017-09-14','MBA','Neha Kapoor','Active'),
(59,'Chirag','Kumar','chirag.kumar@example.com','9876500059','M',25,'O+','Pune','Hinjewadi','IT','QA Engineer',47000,3,'2022-05-11','B.Tech','Rohit Sharma','Active'),
(60,'Deepak','Singh','deepak.singh@example.com','9876500060','M',39,'AB-','Bhopal','Arera Colony','Finance','Finance Manager',90000,15,'2011-11-05','MBA','Amit Verma','Active'),
(61,'Divya','Nair','divya.nair@example.com','9876500061','F',23,'A+','Jaipur','Vaishali Nagar','Support','Customer Support Executive',31000,1,'2024-01-08','B.A.','Sonia Jain','Active'),
(62,'Farah','Malhotra','farah.malhotra@example.com','9876500062','F',30,'B-','Delhi','Saket','Marketing','Content Writer',48000,6,'2019-10-17','M.A.','Priya Mehta','Active'),
(63,'Harsh','Agarwal','harsh.agarwal@example.com','9876500063','M',29,'O+','Jaipur','Mansarovar','Training','Corporate Trainer',68000,7,'2018-08-08','MCA','Ravi Patel','Active'),
(64,'Isha','Yadav','isha.yadav@example.com','9876500064','F',25,'AB+','Bengaluru','Indiranagar','IT','Database Administrator',62000,3,'2022-04-25','B.Tech','Rohit Sharma','Active'),
(65,'Karan','Joshi','karan.joshi2@example.com','9876500065','M',34,'B+','Delhi','Lajpat Nagar','Sales','Sales Manager',84000,11,'2015-02-16','MBA','Karan Singh','Active'),
(66,'Kavita','Bansal','kavita.bansal2@example.com','9876500066','F',28,'O-','Lucknow','Gomti Nagar','HR','HR Manager',71000,7,'2018-06-30','MBA','Neha Kapoor','Active'),
(67,'Komal','Mishra','komal.mishra2@example.com','9876500067','F',22,'A-','Pune','Kothrud','IT','Software Developer',39000,1,'2024-07-01','B.Tech','Rohit Sharma','Active'),
(68,'Lokesh','Saini','lokesh.saini2@example.com','9876500068','M',36,'B+','Bhopal','MP Nagar','Operations','Operations Manager',80000,12,'2015-03-21','MBA','Vikas Gupta','Active'),
(69,'Meera','Reddy','meera.reddy2@example.com','9876500069','F',27,'O+','Hyderabad','Gachibowli','Finance','Financial Analyst',57000,4,'2021-09-09','M.Com','Amit Verma','Active'),
(70,'Mohit','Agarwal','mohit.agarwal2@example.com','9876500070','M',28,'A+','Jaipur','Malviya Nagar','IT','Web Developer',61000,5,'2020-02-14','MCA','Rohit Sharma','Active'),
(71,'Muskan','Kaur','muskan.kaur2@example.com','9876500071','F',24,'B+','Delhi','Rohini','Marketing','Digital Marketing Executive',40000,2,'2023-05-17','BBA','Priya Mehta','Active'),
(72,'Neha','Gupta','neha.gupta2@example.com','9876500072','F',34,'O-','Mumbai','Dadar','HR','Recruiter',60000,10,'2016-11-11','MBA','Neha Kapoor','Active'),
(73,'Nikhil','Chopra','nikhil.chopra2@example.com','9876500073','M',31,'AB+','Pune','Wakad','IT','System Analyst',75000,8,'2017-12-04','B.Tech','Rohit Sharma','Active'),
(74,'Nisha','Saxena','nisha.saxena2@example.com','9876500074','F',27,'A-','Lucknow','Aliganj','Support','Technical Support Engineer',45000,4,'2021-08-19','BCA','Sonia Jain','Active'),
(75,'Nitin','Shah','nitin.shah2@example.com','9876500075','M',29,'B-','Ahmedabad','Navrangpura','Finance','Accountant',53000,6,'2019-01-13','M.Com','Amit Verma','Active'),
(76,'Pankaj','Tiwari','pankaj.tiwari2@example.com','9876500076','M',42,'O+','Delhi','Dwarka','Admin','Admin Manager',86000,18,'2010-05-05','MBA','Ravi Patel','Active'),
(77,'Payal','Garg','payal.garg2@example.com','9876500077','F',23,'A+','Jaipur','Jagatpura','Sales','Sales Executive',33000,1,'2024-03-04','B.Com','Karan Singh','Active'),
(78,'Pooja','Jain','pooja.jain2@example.com','9876500078','F',32,'B+','Bengaluru','Whitefield','IT','QA Engineer',66000,9,'2016-08-23','B.Tech','Rohit Sharma','Active'),
(79,'Priya','Singh','priya.singh2@example.com','9876500079','F',35,'AB-','Mumbai','Andheri','Marketing','Marketing Manager',92000,11,'2014-10-10','MBA','Priya Mehta','Active'),
(80,'Rahul','Verma','rahul.verma2@example.com','9876500080','M',26,'O+','Jaipur','Mansarovar','IT','Software Developer',53000,3,'2022-06-16','B.Tech','Rohit Sharma','Active'),
(81,'Raj','Mehta','raj.mehta2@example.com','9876500081','M',30,'B+','Delhi','Saket','Finance','Payroll Executive',50000,7,'2018-01-20','B.Com','Amit Verma','Active'),
(82,'Rakesh','Yadav','rakesh.yadav2@example.com','9876500082','M',39,'A+','Bhopal','Kolar Road','Operations','Operations Manager',82000,15,'2012-09-15','MBA','Vikas Gupta','Active'),
(83,'Ravi','Patel','ravi.patel2@example.com','9876500083','M',28,'O-','Pune','Baner','IT','Web Developer',60000,5,'2020-07-07','BCA','Rohit Sharma','Active'),
(84,'Reena','Thomas','reena.thomas2@example.com','9876500084','F',25,'B-','Chennai','Adyar','HR','HR Executive',42000,3,'2022-11-12','MBA','Neha Kapoor','Active'),
(85,'Ritu','Chopra','ritu.chopra2@example.com','9876500085','F',37,'AB+','Delhi','Rohini','Sales','Account Manager',77000,13,'2013-04-24','MBA','Karan Singh','Active'),
(86,'Rohan','Das','rohan.das2@example.com','9876500086','M',24,'A+','Kolkata','Salt Lake','Research','Research Analyst',44000,2,'2023-09-18','M.Sc.','Meera Nair','Active'),
(87,'Sahil','Arora','sahil.arora2@example.com','9876500087','M',29,'O+','Gurugram','Sector 45','IT','Database Administrator',70000,6,'2019-02-28','MCA','Rohit Sharma','Active'),
(88,'Sakshi','Bedi','sakshi.bedi2@example.com','9876500088','F',26,'B+','Jaipur','Vaishali Nagar','Marketing','SEO Specialist',47000,4,'2021-10-01','BBA','Priya Mehta','Active'),
(89,'Sameer','Khan','sameer.khan2@example.com','9876500089','M',34,'A-','Mumbai','Powai','Support','Support Team Lead',64000,10,'2016-05-13','BCA','Sonia Jain','Active'),
(90,'Sandeep','Rathore','sandeep.rathore2@example.com','9876500090','M',41,'O+','Jaipur','Mansarovar','Training','Technical Trainer',79000,16,'2011-07-19','MCA','Ravi Patel','Active'),
(91,'Simran','Kaur','simran.kaur3@example.com','9876500091','F',22,'B-','Delhi','Dwarka','HR','Recruiter',36000,1,'2024-06-01','BBA','Neha Kapoor','Active'),
(92,'Sneha','Reddy','sneha.reddy2@example.com','9876500092','F',28,'AB+','Hyderabad','Madhapur','IT','Software Developer',65000,5,'2020-09-16','B.Tech','Rohit Sharma','Active'),
(93,'Sonia','Paul','sonia.paul2@example.com','9876500093','F',33,'O-','Kolkata','New Town','Finance','Financial Analyst',68000,9,'2016-03-17','MBA','Amit Verma','Active'),
(94,'Tanvi','Desai','tanvi.desai2@example.com','9876500094','F',24,'A+','Ahmedabad','Satellite','Marketing','Content Writer',38000,2,'2023-01-25','M.A.','Priya Mehta','Active'),
(95,'Tanya','Bhatia','tanya.bhatia2@example.com','9876500095','F',31,'B+','Pune','Hinjewadi','IT','System Analyst',74000,8,'2017-04-12','M.Tech','Rohit Sharma','Active'),
(96,'Tarun','Goyal','tarun.goyal2@example.com','9876500096','M',27,'O+','Lucknow','Gomti Nagar','Sales','Business Development Executive',45000,4,'2021-12-20','BBA','Karan Singh','Active'),
(97,'Varun','Mishra','varun.mishra2@example.com','9876500097','M',36,'AB-','Delhi','Saket','Admin','Office Administrator',63000,12,'2014-06-26','B.Com','Ravi Patel','Active'),
(98,'Vikas','Gupta','vikas.gupta2@example.com','9876500098','M',30,'A-','Mumbai','Bandra','IT','IT Support Specialist',52000,7,'2018-10-30','BCA','Rohit Sharma','Active'),
(99,'Yash','Kapoor','yash.kapoor2@example.com','9876500099','M',23,'B+','Jaipur','Jagatpura','Research','Data Analyst',40000,1,'2024-02-12','B.Sc.','Meera Nair','Active'),
(100,'Zoya','Ali','zoya.ali@example.com','9876500100','F',27,'O+','Indore','Vijay Nagar','IT','Software Developer',57000,4,'2021-05-14','B.Tech','Rohit Sharma','Active');

ALTER TABLE employees
ADD performance_rating INT,
ADD overtime_hours INT,
ADD training_hours INT,
ADD bonus DECIMAL(10,2);



INSERT INTO employees
(employee_id, first_name, last_name, email, phone, gender, age,
 blood_group, city, address, department, job_role, salary,
 experience_years, hire_date, education, manager_name,
 employment_status, performance_rating, overtime_hours,
 training_hours, bonus)
VALUES
(101,'Aarav','Sharma','aarav.sharma101@example.com','9876500101','M',24,'B+','Jaipur','Malviya Nagar','IT','Software Developer',52000,2,'2024-01-15','B.Tech','Rohit Sharma','Active',4,8,24,6000),
(102,'Aditi','Verma','aditi.verma101@example.com','9876500102','F',29,'A+','Delhi','Rohini','HR','HR Executive',46000,6,'2020-03-12','MBA','Neha Kapoor','Active',5,4,32,8000),
(103,'Aman','Gupta','aman.gupta101@example.com','9876500103','M',35,'O+','Mumbai','Andheri','Finance','Financial Analyst',72000,10,'2016-06-20','MBA','Amit Verma','Active',4,12,16,12000),
(104,'Ananya','Singh','ananya.singh101@example.com','9876500104','F',26,'B-','Pune','Baner','Marketing','SEO Specialist',44000,3,'2023-02-10','BBA','Priya Mehta','Active',3,18,40,3000),
(105,'Anil','Kumar','anil.kumar101@example.com','9876500105','M',42,'AB+','Bengaluru','Whitefield','IT','IT Manager',125000,19,'2010-08-01','M.Tech','Rohit Sharma','Active',5,6,48,25000),
(106,'Anita','Mehta','anita.mehta101@example.com','9876500106','F',31,'O-','Jaipur','Mansarovar','Sales','Sales Executive',42000,7,'2019-04-18','B.Com','Karan Singh','Active',4,10,20,14000),
(107,'Arjun','Patel','arjun.patel101@example.com','9876500107','M',27,'A-','Delhi','Dwarka','IT','Web Developer',61000,4,'2022-07-22','BCA','Rohit Sharma','Active',5,5,36,10000),
(108,'Bhavna','Jain','bhavna.jain101@example.com','9876500108','F',38,'B+','Mumbai','Bandra','HR','HR Manager',88000,13,'2013-09-14','MBA','Neha Kapoor','Active',4,3,28,16000),
(109,'Chirag','Rao','chirag.rao101@example.com','9876500109','M',25,'O+','Pune','Hinjewadi','IT','QA Engineer',45000,2,'2024-05-11','B.Tech','Rohit Sharma','Active',2,26,12,2000),
(110,'Deepak','Yadav','deepak.yadav101@example.com','9876500110','M',40,'AB-','Bhopal','Arera Colony','Finance','Finance Manager',110000,16,'2012-11-05','MBA','Amit Verma','Active',5,5,40,22000),
(111,'Divya','Kapoor','divya.kapoor101@example.com','9876500111','F',23,'A+','Jaipur','Vaishali Nagar','Support','Customer Support Executive',30000,1,'2025-01-08','B.A.','Sonia Jain','Active',3,30,20,1500),
(112,'Farah','Khan','farah.khan101@example.com','9876500112','F',32,'B-','Delhi','Saket','Marketing','Content Writer',51000,7,'2019-10-17','M.A.','Priya Mehta','Active',4,7,44,7000),
(113,'Gaurav','Agrawal','gaurav.agrawal101@example.com','9876500113','M',40,'O+','Jaipur','Mansarovar','Training','Corporate Trainer',85000,16,'2010-08-08','MCA','Ravi Patel','Active',5,8,60,18000),
(114,'Harsh','Malhotra','harsh.malhotra101@example.com','9876500114','M',29,'A+','Mumbai','Powai','IT','Database Administrator',76000,6,'2020-12-01','B.Tech','Rohit Sharma','Active',4,14,32,12000),
(115,'Isha','Nair','isha.nair101@example.com','9876500115','F',26,'AB+','Bengaluru','Indiranagar','Research','Data Analyst',62000,4,'2022-04-25','M.Sc.','Meera Nair','Active',5,6,48,11000),
(116,'Karan','Joshi','karan.joshi101@example.com','9876500116','M',34,'B+','Delhi','Lajpat Nagar','Sales','Sales Manager',95000,11,'2015-02-16','MBA','Karan Singh','Active',4,15,24,30000),
(117,'Kavita','Bansal','kavita.bansal101@example.com','9876500117','F',30,'O-','Lucknow','Gomti Nagar','HR','Recruiter',52000,7,'2019-06-30','MBA','Neha Kapoor','Active',3,8,36,5000),
(118,'Komal','Mishra','komal.mishra101@example.com','9876500118','F',22,'A-','Pune','Kothrud','IT','Software Developer',38000,1,'2025-07-01','B.Tech','Rohit Sharma','Active',4,10,56,4000),
(119,'Lokesh','Saini','lokesh.saini101@example.com','9876500119','M',37,'B+','Bhopal','MP Nagar','Operations','Operations Manager',92000,14,'2012-03-21','MBA','Vikas Gupta','Active',5,9,32,20000),
(120,'Meera','Reddy','meera.reddy101@example.com','9876500120','F',28,'O+','Hyderabad','Gachibowli','Finance','Financial Analyst',59000,5,'2021-09-09','M.Com','Amit Verma','Active',4,7,24,9000),
(121,'Mohit','Agarwal','mohit.agarwal101@example.com','9876500121','M',30,'A+','Jaipur','Malviya Nagar','IT','Web Developer',65000,6,'2020-02-14','MCA','Rohit Sharma','Active',5,4,40,13000),
(122,'Muskan','Kaur','muskan.kaur101@example.com','9876500122','F',25,'B+','Delhi','Rohini','Marketing','Digital Marketing Executive',41000,3,'2023-05-17','BBA','Priya Mehta','Active',3,20,48,3500),
(123,'Neha','Gupta','neha.gupta101@example.com','9876500123','F',36,'O-','Mumbai','Dadar','HR','HR Manager',92000,12,'2014-11-11','MBA','Neha Kapoor','Active',5,5,40,19000),
(124,'Nikhil','Chopra','nikhil.chopra101@example.com','9876500124','M',33,'AB+','Pune','Wakad','IT','System Analyst',82000,9,'2017-12-04','B.Tech','Rohit Sharma','Active',4,12,32,15000),
(125,'Nisha','Saxena','nisha.saxena101@example.com','9876500125','F',28,'A-','Lucknow','Aliganj','Support','Technical Support Engineer',47000,5,'2021-08-19','BCA','Sonia Jain','On Leave',3,6,20,4000),
(126,'Nitin','Shah','nitin.shah101@example.com','9876500126','M',31,'B-','Ahmedabad','Navrangpura','Finance','Accountant',56000,7,'2019-01-13','M.Com','Amit Verma','Active',4,8,24,7000),
(127,'Pankaj','Tiwari','pankaj.tiwari101@example.com','9876500127','M',45,'O+','Delhi','Dwarka','Admin','Admin Manager',98000,21,'2005-05-05','MBA','Ravi Patel','Active',4,4,16,18000),
(128,'Payal','Garg','payal.garg101@example.com','9876500128','F',24,'A+','Jaipur','Jagatpura','Sales','Sales Executive',34000,2,'2024-03-04','B.Com','Karan Singh','Active',2,24,12,6000),
(129,'Pooja','Jain','pooja.jain101@example.com','9876500129','F',34,'B+','Bengaluru','Whitefield','IT','QA Engineer',70000,10,'2016-08-23','B.Tech','Rohit Sharma','Active',5,7,44,14000),
(130,'Priya','Singh','priya.singh101@example.com','9876500130','F',37,'AB-','Mumbai','Andheri','Marketing','Marketing Manager',105000,13,'2013-10-10','MBA','Priya Mehta','Active',5,10,36,24000),
(131,'Rahul','Verma','rahul.verma101@example.com','9876500131','M',27,'O+','Jaipur','Mansarovar','IT','Software Developer',54000,3,'2022-06-16','B.Tech','Rohit Sharma','Active',3,16,28,5000),
(132,'Raj','Mehta','raj.mehta101@example.com','9876500132','M',32,'B+','Delhi','Saket','Finance','Payroll Executive',53000,8,'2018-01-20','B.Com','Amit Verma','Active',4,5,20,8000),
(133,'Rakesh','Yadav','rakesh.yadav101@example.com','9876500133','M',41,'A+','Bhopal','Kolar Road','Operations','Operations Manager',96000,17,'2009-09-15','MBA','Vikas Gupta','Active',5,12,36,21000),
(134,'Ravi','Patel','ravi.patel101@example.com','9876500134','M',29,'O-','Pune','Baner','IT','Web Developer',63000,6,'2020-07-07','BCA','Rohit Sharma','Active',4,9,32,11000),
(135,'Reena','Thomas','reena.thomas101@example.com','9876500135','F',27,'B-','Chennai','Adyar','HR','HR Executive',44000,4,'2022-11-12','MBA','Neha Kapoor','Active',4,6,40,6500),
(136,'Ritu','Chopra','ritu.chopra101@example.com','9876500136','F',39,'AB+','Delhi','Rohini','Sales','Account Manager',88000,15,'2011-04-24','MBA','Karan Singh','Active',5,14,28,26000),
(137,'Rohan','Das','rohan.das101@example.com','9876500137','M',25,'A+','Kolkata','Salt Lake','Research','Research Analyst',46000,3,'2023-09-18','M.Sc.','Meera Nair','Active',3,10,40,4000),
(138,'Sahil','Arora','sahil.arora101@example.com','9876500138','M',31,'O+','Gurugram','Sector 45','IT','Database Administrator',78000,8,'2018-02-28','MCA','Rohit Sharma','Active',4,15,32,13000),
(139,'Sakshi','Bedi','sakshi.bedi101@example.com','9876500139','F',28,'B+','Jaipur','Vaishali Nagar','Marketing','SEO Specialist',49000,5,'2021-10-01','BBA','Priya Mehta','Resigned',3,22,16,2500),
(140,'Sameer','Khan','sameer.khan101@example.com','9876500140','M',35,'A-','Mumbai','Powai','Support','Support Team Lead',69000,11,'2015-05-13','BCA','Sonia Jain','Active',4,18,24,9000),
(141,'Simran','Kaur','simran.kaur101@example.com','9876500141','F',23,'B-','Delhi','Dwarka','HR','Recruiter',37000,1,'2025-06-01','BBA','Neha Kapoor','Active',3,7,36,2500),
(142,'Sneha','Reddy','sneha.reddy101@example.com','9876500142','F',30,'AB+','Hyderabad','Madhapur','IT','Software Developer',72000,7,'2019-09-16','B.Tech','Rohit Sharma','Active',5,6,48,16000),
(143,'Sonia','Paul','sonia.paul101@example.com','9876500143','F',35,'O-','Kolkata','New Town','Finance','Financial Analyst',74000,11,'2015-03-17','MBA','Amit Verma','Active',4,8,32,13000),
(144,'Tanvi','Desai','tanvi.desai101@example.com','9876500144','F',26,'A+','Ahmedabad','Satellite','Marketing','Content Writer',40000,3,'2023-01-25','M.A.','Priya Mehta','On Leave',3,5,24,3000),
(145,'Tanya','Bhatia','tanya.bhatia101@example.com','9876500145','F',33,'B+','Pune','Hinjewadi','IT','System Analyst',85000,10,'2016-04-12','M.Tech','Rohit Sharma','Active',5,9,40,17000),
(146,'Tarun','Goyal','tarun.goyal101@example.com','9876500146','M',29,'O+','Lucknow','Gomti Nagar','Sales','Business Development Executive',48000,5,'2021-12-20','BBA','Karan Singh','Active',4,16,20,12000),
(147,'Varun','Mishra','varun.mishra101@example.com','9876500147','M',38,'AB-','Delhi','Saket','Admin','Office Administrator', 70000,14,'2012-06-26','B.Com','Ravi Patel','Resigned',2,11,12,4000),
(148,'Vikas','Gupta','vikas.gupta101@example.com','9876500148','M',32,'A-','Mumbai','Bandra','IT','IT Support Specialist',56000,8,'2018-10-30','BCA','Rohit Sharma','Active',3,25,16,5000),
(149,'Yash','Kapoor','yash.kapoor101@example.com','9876500149','M',24,'B+','Jaipur','Jagatpura','Research','Data Analyst',42000,2,'2024-02-12','B.Sc.','Meera Nair','Active',4,7,52,5500),
(150,'Zoya','Ali','zoya.ali101@example.com','9876500150','F',28,'O+','Indore','Vijay Nagar','IT','Software Developer',68000,5,'2021-05-14','B.Tech','Rohit Sharma','Active',5,8,44,14000);



1. Basic SQL Commands — Employees Table
A. SELECT Command

-- 1. Display all employee records
SELECT * FROM employees;

-- 2. Display employee names
SELECT first_name FROM employees;

-- 3. Display first name and last name
SELECT first_name, last_name FROM employees;

-- 4. Display employee ID, name and salary
SELECT employee_id, first_name, last_name, salary
FROM employees;

-- 5. Display department and job role
SELECT department, job_role FROM employees;

-- 6. Display employee contact details
SELECT first_name, email, phone FROM employees;

-- 7. Display employee education and experience
SELECT first_name, education, experience_years
FROM employees;

-- 8. Display employee performance details
SELECT first_name, performance_rating, training_hours,
       overtime_hours, bonus
FROM employees;



B. DESC / DESCRIBE Command
-- 9. Display table structure
DESC employees;

-- 10. Display table structure
DESCRIBE employees;


C. DISTINCT Command
-- 11. Display unique departments
SELECT DISTINCT department FROM employees;

-- 12. Display unique cities
SELECT DISTINCT city FROM employees;

-- 13. Display unique blood groups
SELECT DISTINCT blood_group FROM employees;

-- 14. Display unique genders
SELECT DISTINCT gender FROM employees;

-- 15. Display unique job roles
SELECT DISTINCT job_role FROM employees;

-- 16. Display unique education qualifications
SELECT DISTINCT education FROM employees;

-- 17. Display unique employment statuses
SELECT DISTINCT employment_status FROM employees;

-- 18. Display unique performance ratings
SELECT DISTINCT performance_rating FROM employees;



D. COUNT Command
-- 19. Count all employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 20. Count employees whose address is not NULL
SELECT COUNT(address) AS employees_with_address
FROM employees;

-- 21. Count employees with a recorded email
SELECT COUNT(email) AS employees_with_email
FROM employees;

-- 22. Count unique cities
SELECT COUNT(DISTINCT city) AS total_cities
FROM employees;

-- 23. Count unique departments
SELECT COUNT(DISTINCT department) AS total_departments
FROM employees;

-- 24. Count unique blood groups
SELECT COUNT(DISTINCT blood_group) AS blood_group_types
FROM employees;

-- 25. Count unique job roles
SELECT COUNT(DISTINCT job_role) AS total_job_roles
FROM employees;

-- 26. Count unique education qualifications
SELECT COUNT(DISTINCT education) AS education_types
FROM employees;

-- 27. Count unique performance ratings
SELECT COUNT(DISTINCT performance_rating) AS rating_types
FROM employees;

. WHERE with AND Operator
All conditions connected by AND must be true.
-- 28. Employees earning more than 40000 and having over 3 years of experience
SELECT employee_id, first_name, salary, experience_years
FROM employees
WHERE salary > 40000
AND experience_years > 3;

-- 29. Employees from Mumbai earning at least 50000
SELECT employee_id, first_name, city, salary
FROM employees
WHERE city = 'Mumbai'
AND salary >= 50000;

-- 30. Employees younger than 30 with at least 2 years of experience
SELECT employee_id, first_name, age, experience_years
FROM employees
WHERE age < 30
AND experience_years >= 2;

-- 31. Female employees working in HR
SELECT employee_id, first_name, gender, department
FROM employees
WHERE gender = 'F'
AND department = 'HR';

-- 32. Active employees with a performance rating of 4 or higher
SELECT employee_id, first_name, employment_status, performance_rating
FROM employees
WHERE employment_status = 'Active'
AND performance_rating >= 4;

-- 33. Employees with salary between 30000 and 60000
SELECT employee_id, first_name, salary
FROM employees
WHERE salary >= 30000
AND salary <= 60000;

-- 34. Employees whose IDs are greater than 10 and less than 40
SELECT employee_id, first_name, last_name, department
FROM employees
WHERE employee_id > 10
AND employee_id < 40;


F. WHERE with Multiple Conditions
-- 35. Employees from Bhopal with IDs between 10 and 40
SELECT employee_id, first_name, last_name, city, age, gender
FROM employees
WHERE gender = 'F'
AND city = 'Bhopal'
AND employee_id > 10
AND employee_id < 40;

-- 36. Employees in IT or HR who earn more than 40000
SELECT employee_id, first_name, department, salary
FROM employees
WHERE (department = 'IT' OR department = 'HR')
AND salary > 40000;

-- 37. Employees with at least 5 years of experience and a bonus above 5000
SELECT employee_id, first_name, experience_years, bonus
FROM employees
WHERE experience_years >= 5
AND bonus > 5000;

-- 38. Active employees under 35 earning more than 45000
SELECT employee_id, first_name, age, salary, employment_status
FROM employees
WHERE employment_status = 'Active'
AND age < 35
AND salary > 45000;

-- 39. Employees with a rating of at least 4 and fewer than 10 overtime hours
SELECT employee_id, first_name, performance_rating, overtime_hours
FROM employees
WHERE performance_rating >= 4
AND overtime_hours < 10;

-- 40. Employees from Jaipur or Mumbai with at least 3 years of experience
SELECT employee_id, first_name, city, experience_years
FROM employees
WHERE (city = 'Jaipur' OR city = 'Mumbai')
AND experience_years >= 3;


G. More Comparison Practice
-- 41. Employees whose salary is not 50000
SELECT * FROM employees
WHERE salary <> 50000;

-- 42. Employees with ratings below 3
SELECT * FROM employees
WHERE performance_rating < 3;

-- 43. Employees with zero overtime hours
SELECT * FROM employees
WHERE overtime_hours = 0;

-- 44. Employees who received no bonus amount
SELECT * FROM employees
WHERE bonus = 0;

-- 45. Employees with a recorded performance rating
SELECT * FROM employees
WHERE performance_rating IS NOT NULL;

-- 46. Employees whose bonus is missing
SELECT * FROM employees
WHERE bonus IS NULL;

-- 47. Employees with a recorded training-hours value
SELECT * FROM employees
WHERE training_hours IS NOT NULL;

-- 48. Employees with experience of at least 10 years
SELECT * FROM employees
WHERE experience_years >= 10;

-- 49. Employees earning less than 25000 or more than 80000
SELECT employee_id, first_name, salary
FROM employees
WHERE salary < 25000
OR salary > 80000;

-- 50. Employees who are not active
SELECT employee_id, first_name, employment_status
FROM employees
WHERE employment_status != 'Active';








3. AND, OR and Multiple Conditions
-- 1. Employees from Jaipur earning at least 50000
SELECT * FROM employees
WHERE city = 'Jaipur' AND salary >= 50000;

-- 2. Employees from Jaipur or Delhi
SELECT * FROM employees
WHERE city = 'Jaipur' OR city = 'Delhi';

-- 3. Employees whose IDs are between 20 and 40
SELECT * FROM employees
WHERE city = 'Jaipur'
AND (employee_id >= 20 AND employee_id <= 40);

-- 4. Employees from Malviya Nagar or female employees
SELECT * FROM employees
WHERE address = 'Malviya Nagar' OR gender = 'F';

-- 5. Male employees with 3–5 years of experience and names ending in n
SELECT * FROM employees
WHERE gender = 'M'
AND experience_years BETWEEN 3 AND 5
AND first_name LIKE '%n';

-- 6. Employees from Jaipur whose first name starts with A
SELECT * FROM employees
WHERE city = 'Jaipur'
AND first_name LIKE 'A%';

-- 7. Employees younger than 30 or from Mumbai
SELECT employee_id, first_name, age, city
FROM employees
WHERE age < 30 OR city = 'Mumbai';

-- 8. Employees aged between 23 and 25
SELECT employee_id, first_name, age, city
FROM employees
WHERE age >= 23 AND age <= 25;

-- 9. Active employees in IT with a rating of at least 4
SELECT * FROM employees
WHERE employment_status = 'Active'
AND department = 'IT'
AND performance_rating >= 4;

-- 10. Employees earning above 50000 or receiving a bonus above 10000
SELECT employee_id, first_name, salary, bonus
FROM employees
WHERE salary > 50000 OR bonus > 10000;


4. BETWEEN and NOT BETWEEN
BETWEEN range ki dono boundaries ko include karta hai.
-- 1. Employees with IDs between 20 and 40
SELECT * FROM employees
WHERE employee_id BETWEEN 20 AND 40;

-- 2. Employees whose IDs are outside 20–40
SELECT * FROM employees
WHERE employee_id NOT BETWEEN 20 AND 40;

-- 3. Employees aged between 23 and 25
SELECT employee_id, first_name, age, city
FROM employees
WHERE age BETWEEN 23 AND 25;

-- 4. Count employees aged between 23 and 25
SELECT COUNT(employee_id) AS total_employees
FROM employees
WHERE age BETWEEN 23 AND 25;

-- 5. Same result using comparison operators
SELECT COUNT(employee_id) AS total_employees
FROM employees
WHERE age >= 23 AND age <= 25;

-- 6. Employees with IDs between 1 and 5
SELECT * FROM employees
WHERE employee_id BETWEEN 1 AND 5;

-- 7. Employees with IDs between 15 and 18
SELECT * FROM employees
WHERE employee_id BETWEEN 15 AND 18;

-- 8. Display IDs from 15 to 18
SELECT employee_id
FROM employees
WHERE employee_id BETWEEN 15 AND 18;

-- 9. Employees earning between 30000 and 60000
SELECT employee_id, first_name, salary
FROM employees
WHERE salary BETWEEN 30000 AND 60000;

-- 10. Employees with experience outside 2–8 years
SELECT employee_id, first_name, experience_years
FROM employees
WHERE experience_years NOT BETWEEN 2 AND 8;

-- 11. Employees with ratings between 3 and 5
SELECT employee_id, first_name, performance_rating
FROM employees
WHERE performance_rating BETWEEN 3 AND 5;

-- 12. Employees with bonuses between 5000 and 15000
SELECT employee_id, first_name, bonus
FROM employees
WHERE bonus BETWEEN 5000 AND 15000;


5. IN and NOT IN
-- 1. Employees from Jaipur, Delhi or Mumbai
SELECT * FROM employees
WHERE city IN ('Jaipur', 'Delhi', 'Mumbai');

-- 2. Employees not from Jaipur or Delhi
SELECT * FROM employees
WHERE city NOT IN ('Jaipur', 'Delhi');

-- 3. Display selected employee details
SELECT employee_id, first_name, age, city
FROM employees
WHERE city IN ('Jaipur', 'Mumbai', 'Delhi');

-- 4. Count employees from selected cities
SELECT COUNT(employee_id) AS employees_from_selected_cities
FROM employees
WHERE city IN ('Jaipur', 'Mumbai', 'Delhi');

-- 5. Employees from Lucknow, Delhi or Pune
SELECT * FROM employees
WHERE city IN ('Lucknow', 'Delhi', 'Pune');

-- 6. Employees from IT, HR or Finance
SELECT * FROM employees
WHERE department IN ('IT', 'HR', 'Finance');

-- 7. Employees from multiple departments
SELECT * FROM employees
WHERE department IN ('IT', 'HR', 'Finance', 'Marketing');

-- 8. Employees with selected employment statuses
SELECT * FROM employees
WHERE employment_status IN ('Active', 'Inactive');

-- 9. Employees with performance ratings 3, 4 or 5
SELECT employee_id, first_name, performance_rating
FROM employees
WHERE performance_rating IN (3, 4, 5);

-- 10. Employees with selected blood groups
SELECT employee_id, first_name, blood_group
FROM employees
WHERE blood_group IN ('A+', 'B+', 'O+');

-- 11. Employees from Jaipur or Mumbai, sorted by descending ID
SELECT employee_id, first_name, age, city
FROM employees
WHERE city IN ('Jaipur', 'Mumbai')
ORDER BY employee_id DESC;

-- 12. Employees whose IDs are not 1, 2, 3, 4 or 5
SELECT * FROM employees
WHERE employee_id NOT IN (1, 2, 3, 4, 5);


6. LIKE Operator and Wildcards
- % — zero ya multiple characters.
- _ — exactly one character.
-- 1. First names starting with A
SELECT * FROM employees
WHERE first_name LIKE 'A%';

-- 2. First names ending with a
SELECT * FROM employees
WHERE first_name LIKE '%a';

-- 3. First names containing a
SELECT * FROM employees
WHERE first_name LIKE '%a%';

-- 4. First names whose second character is a
SELECT * FROM employees
WHERE first_name LIKE '_a%';

-- 5. First names ending in n
SELECT * FROM employees
WHERE first_name LIKE '%n';

-- 6. First names containing e
SELECT DISTINCT first_name
FROM employees
WHERE first_name LIKE '%e%';

-- 7. Employees whose names start with A and whose city starts with J
SELECT employee_id, first_name, last_name, city, age, gender
FROM employees
WHERE first_name LIKE 'A%'
AND city LIKE 'J%'
AND employee_id > 1;

-- 8. Emails with exactly 15 characters before @example.com
SELECT * FROM employees
WHERE email LIKE '_______________@example.com';

-- 9. Employees whose last names start with S
SELECT * FROM employees
WHERE last_name LIKE 'S%';

-- 10. Employees whose first names contain 'an'
SELECT * FROM employees
WHERE first_name LIKE '%an%';

-- 11. Employees whose phone numbers start with 98
SELECT * FROM employees
WHERE phone LIKE '98%';

-- 12. Employees whose job roles contain 'Manager'
SELECT * FROM employees
WHERE job_role LIKE '%Manager%';

-- 13. Employees whose cities end with 'pur'
SELECT * FROM employees
WHERE city LIKE '%pur';

-- 14. Employees whose first names have exactly five characters
SELECT * FROM employees
WHERE first_name LIKE '_____';


```
