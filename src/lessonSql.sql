--   TODO DDL Operators
-- table tuzup beret
CREATE TABLE students
(
    id            SERIAL PRIMARY KEY ,
    first_name    VARCHAR NOT NULL UNIQUE ,
    last_name     VARCHAR,
    age           INTEGER,
    date_of_birth DATE
);

CREATE TABLE groups(
                       id SERIAL PRIMARY KEY ,
                       group_name varchar,
                       student_id int references students(id)
);

-- uje tuzulgon table dy ozgortup beret
ALTER TABLE students drop column age;
-- table ochurup beret
DROP TABLE students;
-- table ochurup kaira tuzup beret
TRUNCATE table students;


--   TODO DML Operators
INSERT INTO students(first_name,last_name,age,date_of_birth)
VALUES
    ('Bektursun','Anarbekov',18,'2009-01-01'),
    ('Saikal','Kasmaalieva',20,'2005-10-10'),
    ('Nurperi','Esenbaieva',19,'2009-01-01'),
    ('Asgadbek','Anarbekov',18,'2009-01-01');

INSERT INTO groups(group_name, student_id)
VALUES
    ('Java 19',1),
    ('Java 20',2);