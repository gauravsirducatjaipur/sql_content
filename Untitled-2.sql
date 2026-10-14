student_id
first_name
last_name
email
contact_no
gender
class
age
weight
blood_group
religion
address
city
pincode
passing_status
admission_date
highest_education
current_course
current_year_semester
school_college_name
percentage_or_cgpa










CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,

    -- PERSONAL DETAILS
    first_name      VARCHAR(50) NOT NULL,
    last_name       VARCHAR(50) NOT NULL,
    email           VARCHAR(100) UNIQUE NOT NULL,
    contact_no      VARCHAR(14),
    gender          ENUM('M', 'F', 'O') NOT NULL DEFAULT 'O',
    class           ENUM('1st','2nd','3rd','4th','5th','6th','7th','8th','9th','10th') NOT NULL,
    age             INT CHECK (age >= 5 AND age <= 18),
    weight          FLOAT CHECK (weight > 0),
    blood_group     VARCHAR(7) CHECK (blood_group IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')),
    religion        VARCHAR(40),
    address         VARCHAR(255),
    city            VARCHAR(50),
    pincode         INT CHECK (pincode BETWEEN 100000 AND 999999),
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
                        CHECK (experience_years >= 0 AND experience_years <= 50),
    current_job_role    VARCHAR(100),
    skills              VARCHAR(255),
    fees                DECIMAL(10,2) NOT NULL CHECK (fees > 0),
    created_at          TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SET SQL_SAFE_UPDATES = 0;
DELETE FROM customer_copy;
SET SQL_SAFE_UPDATES = 1;






| Column             | Constraint                  | Meaning                         |
| ------------------ | --------------------------- | ------------------------------- |
| `student_id`       | `PRIMARY KEY`               | Unique student ID               |
| `student_id`       | `AUTO_INCREMENT`            | ID automatically generate       |
| `first_name`       | `NOT NULL`                  | Empty nahi ho sakta             |
| `last_name`        | `NOT NULL`                  | Empty nahi ho sakta             |
| `email`            | `UNIQUE`                    | Duplicate email allowed nahi    |
| `email`            | `NOT NULL`                  | Email compulsory                |
| `gender`           | `ENUM`                      | Sirf M/F/O                      |
| `age`              | `CHECK`                     | 5–18                            |
| `weight`           | `CHECK`                     | 0 se greater                    |
| `blood_group`      | `CHECK`                     | Valid blood groups              |
| `pincode`          | `CHECK`                     | 6-digit range                   |
| `passing_status`   | `DEFAULT`                   | Default `TRUE`                  |
| `admission_date`   | `NOT NULL`                  | Compulsory                      |
| `has_experience`   | `DEFAULT`                   | Default `FALSE`                 |
| `experience_years` | `CHECK`                     | 0–50                            |
| `fees`             | `NOT NULL`                  | Compulsory                      |
| `fees`             | `CHECK`                     | 0 se greater                    |
| `created_at`       | `DEFAULT CURRENT_TIMESTAMP` | Automatically current date/time |





-- 1. Existing table ka backup
CREATE TABLE student_backup
AS
SELECT * FROM student;


-- student
--    ↓
-- student_backup

-- CREATE TABLE ... AS SELECT generally data copy karta hai, lekin original table ke saare constraints/indexes/keys same tarah copy nahi karta.




-- 2. Table ki exact structure + data ki copy
-- Agar aap proper backup chahte hain, to better approach:

CREATE TABLE student_backup LIKE student;

-- Ye student ki structure copy karega, including columns, indexes etc.
-- Phir data copy:




-- 3. ALTER practice ke liye new copy
-- Agar original student ko untouched rakhna hai aur ALTER commands kisi new table par practice karni hain:

CREATE TABLE student_alter_practice LIKE student;

INSERT INTO student_alter_practice SELECT * FROM student;



-- student
--    │
--    ├── Original table
--    │
--    ├── student_backup
--    │      └── Backup
--    │
--    └── student_alter_practice
--           └── ALTER TABLE practice


SELECT * FROM student;
SELECT * FROM student_backup;
SELECT * FROM student_alter_practice;















ALTER TABLE table_name ADD COLUMN column_name datatype;
ALTER TABLE student ADD COLUMN father_name VARCHAR(50);

ALTER TABLE table_name DROP COLUMN column_name;
ALTER TABLE student DROP COLUMN father_name;

ALTER TABLE table_name RENAME COLUMN old_name to new_name;
ALTER TABLE student RENAME COLUMN first_name TO fname;

ALTER TABLE table_name MODIFY column_name new_datatype constraint;
ALTER TABLE student MODIFY COLUMN age INT NOT NULL;

ALTER TABLE table_name ADD CONSTRAINT constraint_name constraint_definition;
ALTER TABLE student ADD CONSTRAINT chk_age CHECK (age >= 5 AND age <= 18);

ALTER TABLE table_name RENAME TO new_table_name;
ALTER TABLE student RENAME TO student_details;






| Kaam                             | Keyword               |
| -------------------------------- | --------------------- |
| Naya column add                  | `ADD COLUMN`          |
| Multiple columns add             | `ADD COLUMN`          |
| Specific position par column add | `AFTER / FIRST`       |
| Datatype change                  | `MODIFY COLUMN`       |
| Column size change               | `MODIFY COLUMN`       |
| Default value add/change         | `SET DEFAULT`         |
| Default value remove             | `DROP DEFAULT`        |
| `NOT NULL` add/remove            | `MODIFY COLUMN`       |
| `CHECK` add/remove               | `ADD/DROP CONSTRAINT` |
| `UNIQUE` add                     | `ADD CONSTRAINT`      |
| `PRIMARY KEY` add                | `ADD CONSTRAINT`      |
| `FOREIGN KEY` add                | `ADD CONSTRAINT`      |
| Constraint remove                | `DROP CONSTRAINT`     |
| Column rename                    | `RENAME COLUMN`       |
| Column name + datatype change    | `CHANGE COLUMN`       |
| Column delete                    | `DROP COLUMN`         |
| Multiple columns delete          | `DROP COLUMN`         |
| `ENUM` add/modify                | `ADD/MODIFY COLUMN`   |
| `AUTO_INCREMENT` add/modify      | `MODIFY COLUMN`       |
| Table rename                     | `RENAME TO`           |




-- ALTER TABLE — MASTER PATTERN

-- 1. ADD → kuch naya banana
-- --------------------------
ALTER TABLE table_name
ADD ...;

Examples:
ADD COLUMN age INT;
ADD CONSTRAINT chk_age CHECK (age >= 5);


-- 2. MODIFY / CHANGE → existing cheez ko badalna
-- ----------------------------------------------
ALTER TABLE table_name
MODIFY ...;

Example:
MODIFY COLUMN age INT;

-- Name + datatype dono change:
ALTER TABLE table_name
CHANGE COLUMN old_name new_name VARCHAR(50);


-- 3. RENAME → naam badalna
-- ------------------------
ALTER TABLE table_name
RENAME ...;

-- Column:
RENAME COLUMN old_name TO new_name;

-- Table:
RENAME TO new_table_name;


-- 4. DROP → kuch remove/delete karna
-- ----------------------------------
ALTER TABLE table_name
DROP ...;

-- Column:
DROP COLUMN age;

-- Constraint:
DROP CONSTRAINT chk_age;

-- Default:
ALTER COLUMN city DROP DEFAULT;








-- ALTER TABLE me hum ye complete topics cover karenge
-- Add column
ALTER TABLE table_name ADD COLUMN column_name data_type;
ALTER TABLE student_alter_practice ADD COLUMN father_name VARCHAR(50);
DESC student_alter_practice;

ALTER TABLE student_alter_practice ADD COLUMN mother_name VARCHAR(50) NOT NULL;
ALTER TABLE student_alter_practice ADD COLUMN country VARCHAR(30) DEFAULT 'India';
DESC student_alter_practice;


-- Add multiple columns
ALTER TABLE table_name
ADD COLUMN column1 datatype,
ADD COLUMN column2 datatype,
ADD COLUMN column3 datatype;


ALTER TABLE student_alter_practice
ADD COLUMN father_name VARCHAR(50),
ADD COLUMN mother_name VARCHAR(50),
ADD COLUMN parent_contact VARCHAR(15);



-- Add column at specific position
ALTER TABLE table_name ADD COLUMN column_name datatype AFTER existing_column;
ALTER TABLE student_alter_practice ADD COLUMN father_name VARCHAR(50) AFTER last_name;
ALTER TABLE student_alter_practice ADD COLUMN father_name VARCHAR(50) FIRST;

-- Modify column datatype
ALTER TABLE table_name MODIFY COLUMN column_name new_datatype;
ALTER TABLE student_alter_practice MODIFY COLUMN contact_no VARCHAR(20);

-- Modify column size
ALTER TABLE table_name MODIFY COLUMN column_name datatype(size);
ALTER TABLE student_alter_practice MODIFY COLUMN first_name VARCHAR(100);

-- Change default value
ALTER TABLE table_name ALTER COLUMN column_name SET DEFAULT value;
ALTER TABLE student_alter_practice ALTER COLUMN city SET DEFAULT 'Jaipur';


-- Add NOT NULL
ALTER TABLE table_name MODIFY COLUMN column_name datatype NOT NULL;
ALTER TABLE student_alter_practice MODIFY COLUMN contact_no VARCHAR(20) NOT NULL;


-- Remove NOT NULL
ALTER TABLE table_name MODIFY COLUMN column_name datatype NULL;
ALTER TABLE student_alter_practice MODIFY COLUMN contact_no VARCHAR(20) NULL;


-- Add CHECK
ALTER TABLE table_name ADD CONSTRAINT constraint_name CHECK (condition);


-- Change Constraint
ALTER TABLE table_name DROP CONSTRAINT constraint_name;
ALTER TABLE table_name ADD CONSTRAINT constraint_name CHECK (new_condition);


-- Add UNIQUE
ALTER TABLE table_name ADD CONSTRAINT constraint_name UNIQUE (column_name);
ALTER TABLE student_alter_practice ADD CONSTRAINT uq_contact UNIQUE (contact_no);


-- Add PRIMARY KEY
ALTER TABLE table_name ADD CONSTRAINT constraint_name PRIMARY KEY (column_name);
ALTER TABLE student_alter_practice ADD CONSTRAINT pk_student PRIMARY KEY (student_id);



-- Add FOREIGN KEY
ALTER TABLE table_name ADD CONSTRAINT constraint_name FOREIGN KEY (column_name) REFERENCES parent_table(parent_column);
ALTER TABLE table_name ADD CONSTRAINT constraint_name FOREIGN KEY (column_name) REFERENCES parent_table(parent_column);


-- Drop constraint
ALTER TABLE table_name DROP CONSTRAINT constraint_name;
ALTER TABLE student_alter_practice DROP CONSTRAINT chk_age;




-- Rename column
ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_name;
ALTER TABLE student_alter_practice RENAME COLUMN first_name TO fname;


-- Rename table
ALTER TABLE old_table_name RENAME TO new_table_name;
ALTER TABLE old_table_name RENAME TO new_table_name;



-- Drop column
ALTER TABLE table_name DROP COLUMN column_name;
ALTER TABLE student_alter_practice DROP COLUMN age;




-- Drop multiple columns
ALTER TABLE student_alter_practice
DROP COLUMN father_name,
DROP COLUMN mother_name,
DROP COLUMN parent_contact;

ALTER TABLE student_alter_practice
DROP COLUMN email,
DROP COLUMN gender,
DROP COLUMN age;







-- Change column datatype/name
ALTER TABLE table_name CHANGE COLUMN old_column_name new_column_name new_datatype;
ALTER TABLE table_name CHANGE COLUMN old_column_name new_column_name new_datatype;




-- Add ENUM
ALTER TABLE table_name ADD COLUMN column_name ENUM('value1', 'value2', 'value3');
ALTER TABLE student_alter_practice ADD COLUMN status ENUM('Active', 'Inactive');






-- Modify ENUM
ALTER TABLE table_name MODIFY COLUMN column_name ENUM('value1', 'value2', 'value3');
ALTER TABLE student_alter_practice MODIFY COLUMN status ENUM('Active', 'Inactive', 'Pending');



-- Add/modify default
ALTER TABLE table_name ALTER COLUMN column_name SET DEFAULT value;
ALTER TABLE student_alter_practice ALTER COLUMN city SET DEFAULT 'Jaipur';




-- Remove default
ALTER TABLE table_name ALTER COLUMN column_name DROP DEFAULT;
ALTER TABLE student_alter_practice ALTER COLUMN city DROP DEFAULT;


-- AUTO_INCREMENT
ALTER TABLE table_name MODIFY COLUMN column_name datatype AUTO_INCREMENT;
ALTER TABLE student_alter_practice MODIFY COLUMN student_id INT AUTO_INCREMENT;




-- ALTER TABLE ... RENAME TO
ALTER TABLE old_table_name RENAME TO new_table_name;
ALTER TABLE student_alter_practice RENAME TO student_practice;




-- ALTER TABLE ... ADD CONSTRAINT
ALTER TABLE table_name ADD CONSTRAINT constraint_name constraint_definition;
ALTER TABLE student ADD CONSTRAINT chk_age CHECK (age >= 5 AND age <= 18);



-- ALTER TABLE ... DROP CONSTRAINT
ALTER TABLE table_name DROP CONSTRAINT constraint_name;
ALTER TABLE student DROP CONSTRAINT chk_age;



-- Practical examples on student table
-- 1. student table me `father_name` column add karo.
-- 2. `father_name` ka size 100 karo.
-- 3. `father_name` ko NOT NULL karo.
-- 4. `father_name` ko `guardian_name` rename karo.
-- 5. `guardian_name` column remove karo.

-- 6. student table me `mother_name` aur `parent_contact` columns add karo.
-- 7. `parent_contact` ka size 15 karo.
-- 8. `parent_contact` ko NOT NULL karo.
-- 9. `parent_contact` ko `emergency_contact` rename karo.
-- 10. `mother_name` column remove karo.

-- 11. `age` column ka datatype INT se TINYINT karo.
-- 12. `weight` column ka datatype FLOAT se DECIMAL(5,2) karo.
-- 13. `religion` column ka size 40 se 60 karo.
-- 14. `address` column ka size 255 se 300 karo.
-- 15. `skills` column ka size 255 se 500 karo.

-- 16. `age` par CHECK constraint lagao: age 5 se 18 ke beech ho.
-- 17. `weight` par CHECK constraint lagao: weight 0 se greater ho.
-- 18. `experience_years` par CHECK constraint lagao: 0 se 50 ke beech ho.
-- 19. `fees` par CHECK constraint lagao: fees 0 se greater ho.
-- 20. `pincode` par CHECK constraint lagao: 100000 se 999999 ke beech ho.

-- 21. student table me `status` column add karo jiska default value `'Active'` ho.
-- 22. `status` ka default value `'Inactive'` karo.
-- 23. `status` se default value remove karo.
-- 24. `city` ka default value `'Jaipur'` set karo.
-- 25. `city` ka default value remove karo.

-- 26. `email` column ko UNIQUE constraint do.
-- 27. `contact_no` column ko UNIQUE constraint do.
-- 28. `student_id` ko PRIMARY KEY banao.
-- 29. `gender` column ko ENUM `('M','F','O')` me modify karo.
-- 30. `student` table ka naam `student_details` karo.





-- 1. Add column `father_name` in the `student` table.
-- 2. Modify the size of `father_name` to 100.
-- 3. Add NOT NULL constraint to `father_name`.
-- 4. Rename `father_name` to `guardian_name`.
-- 5. Drop the `guardian_name` column.

-- 6. Add columns `mother_name` and `parent_contact` in the `student` table.
-- 7. Modify the size of `parent_contact` to 20.
-- 8. Add NOT NULL constraint to `parent_contact`.
-- 9. Rename `parent_contact` to `emergency_contact`.
-- 10. Drop the `mother_name` column.

-- 11. Modify the datatype of `age` to TINYINT.
-- 12. Modify the datatype of `weight` to DECIMAL(5,2).
-- 13. Modify the size of `religion` to 60.
-- 14. Modify the size of `address` to 300.
-- 15. Modify the size of `skills` to 500.

-- 16. Add a CHECK constraint to `age` that allows values between 5 and 18.
-- 17. Add a CHECK constraint to `weight` that allows values greater than 0.
-- 18. Add a CHECK constraint to `experience_years` that allows values between 0 and 50.
-- 19. Add a CHECK constraint to `fees` that allows values greater than 0.
-- 20. Add a CHECK constraint to `pincode` that allows values between 100000 and 999999.

-- 21. Add a `status` column with the default value `'Active'`.
-- 22. Change the default value of `status` to `'Inactive'`.
-- 23. Remove the default value from `status`.
-- 24. Set the default value of `city` to `'Jaipur'`.
-- 25. Remove the default value from `city`.

-- 26. Add a UNIQUE constraint to the `email` column.
-- 27. Add a UNIQUE constraint to the `contact_no` column.
-- 28. Add a PRIMARY KEY constraint to the `student_id` column.
-- 29. Modify the `gender` column to ENUM with values `'M'`, `'F'`, and `'O'`.
-- 30. Rename the `student` table to `student_details`.



-- 1. Add column
ALTER TABLE student
ADD COLUMN father_name VARCHAR(50);

-- 2. Modify column size
ALTER TABLE student
MODIFY COLUMN father_name VARCHAR(100);

-- 3. Add NOT NULL
ALTER TABLE student
MODIFY COLUMN father_name VARCHAR(100) NOT NULL;

-- 4. Rename column
ALTER TABLE student
RENAME COLUMN father_name TO guardian_name;

-- 5. Drop column
ALTER TABLE student
DROP COLUMN guardian_name;


-- 6. Add multiple columns
ALTER TABLE student
ADD COLUMN mother_name VARCHAR(50),
ADD COLUMN parent_contact VARCHAR(15);

-- 7. Modify size
ALTER TABLE student
MODIFY COLUMN parent_contact VARCHAR(20);

-- 8. Add NOT NULL
ALTER TABLE student
MODIFY COLUMN parent_contact VARCHAR(20) NOT NULL;

-- 9. Rename column
ALTER TABLE student
RENAME COLUMN parent_contact TO emergency_contact;

-- 10. Drop column
ALTER TABLE student
DROP COLUMN mother_name;


-- 11. Modify datatype
ALTER TABLE student
MODIFY COLUMN age TINYINT;

-- 12. Modify datatype
ALTER TABLE student
MODIFY COLUMN weight DECIMAL(5,2);

-- 13. Modify size
ALTER TABLE student
MODIFY COLUMN religion VARCHAR(60);

-- 14. Modify size
ALTER TABLE student
MODIFY COLUMN address VARCHAR(300);

-- 15. Modify size
ALTER TABLE student
MODIFY COLUMN skills VARCHAR(500);


-- 16. Add CHECK
ALTER TABLE student
ADD CONSTRAINT chk_age
CHECK (age >= 5 AND age <= 18);

-- 17. Add CHECK
ALTER TABLE student
ADD CONSTRAINT chk_weight
CHECK (weight > 0);

-- 18. Add CHECK
ALTER TABLE student
ADD CONSTRAINT chk_experience
CHECK (experience_years >= 0 AND experience_years <= 50);

-- 19. Add CHECK
ALTER TABLE student
ADD CONSTRAINT chk_fees
CHECK (fees > 0);

-- 20. Add CHECK
ALTER TABLE student
ADD CONSTRAINT chk_pincode
CHECK (pincode BETWEEN 100000 AND 999999);


-- 21. Add column with DEFAULT
ALTER TABLE student
ADD COLUMN status VARCHAR(20) DEFAULT 'Active';

-- 22. Change DEFAULT
ALTER TABLE student
ALTER COLUMN status SET DEFAULT 'Inactive';

-- 23. Remove DEFAULT
ALTER TABLE student
ALTER COLUMN status DROP DEFAULT;

-- 24. Add DEFAULT
ALTER TABLE student
ALTER COLUMN city SET DEFAULT 'Jaipur';

-- 25. Remove DEFAULT
ALTER TABLE student
ALTER COLUMN city DROP DEFAULT;


-- 26. Add UNIQUE
ALTER TABLE student
ADD CONSTRAINT uq_email UNIQUE (email);

-- 27. Add UNIQUE
ALTER TABLE student
ADD CONSTRAINT uq_contact UNIQUE (contact_no);

-- 28. Add PRIMARY KEY
ALTER TABLE student
ADD CONSTRAINT pk_student PRIMARY KEY (student_id);

-- 29. Modify ENUM
ALTER TABLE student
MODIFY COLUMN gender ENUM('M','F','O');

-- 30. Rename table
ALTER TABLE student
RENAME TO student_details;