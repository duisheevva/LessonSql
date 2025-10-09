--   TODO DDL Operators
CREATE TABLE schools
(
    id                SERIAL PRIMARY KEY,
    name              VARCHAR,
    address           VARCHAR(100),
    count_of_students int
);

-- 1.jany pole (column koshobuz)
ALTER TABLE schools
    ADD COLUMN foundation_date DATE;
ALTER TABLE schools
    ADD COLUMN count_of_students int;
-- 2.name degen polege unique constraint koshobuz
ALTER TABLE schools
    ADD CONSTRAINT a UNIQUE (name);
-- 3.column ochurush kerek
ALTER TABLE schools
    DROP COLUMN count_of_students;
-- 4.constraint ochurush kerek
ALTER TABLE schools
    DROP CONSTRAINT a;
--   TODO DML Operators
INSERT INTO schools(name, address, count_of_students, foundation_date)
VALUES ('Peaksoft', 'Ibraimova 115', 100, '2020-11-16'),
       ('Codify', 'Chui 15', 50, '2021-10-20'),
       ('Geeks', 'Vostok 5', 150, '2023-09-1');

--   TODO DDL Operators
CREATE TABLE students
(
    id         SERIAL PRIMARY KEY,
    first_name VARCHAR DEFAULT ('bul jakta firstname jazylysh kerek'),
    last_name  VARCHAR,
    age        int check ( age > 0 ),
    school_id int references schools(id)
);

DROP TABLE students;

INSERT INTO students(first_name, last_name, age, school_id)
VALUES
    ('Saikal','Kasmaalieva',18,1),
    ('Aibiyke','Azimzhanova',16,1),
    ('Anara','Junushbekova',18,2),
    ('Sultan','Jumabekov',0,2),
    ('Nurperi','Esenbaieva',17,3),
    ('Bektursun','Anarbekov',15,3);
