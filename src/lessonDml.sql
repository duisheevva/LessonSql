CREATE TABLE students
(
    id          SERIAL PRIMARY KEY,
    first_name  VARCHAR,
    last_name   VARCHAR,
    age         INT,
    grade       INT,
    nationality VARCHAR,
    gender      VARCHAR
);

INSERT INTO students(first_name, last_name, age, grade, nationality, gender)
VALUES
    ('Bektursun','Anarbekov',18,4,'Kyrgyz','Male'),
    ('Anara','Djunushbekova',25,6,'Kazakh','Female'),
    ('Nurperi','Esenbaieva',20,7,'Uzbechka','Female'),
    ('Saikal','Kasmaalieva',23,5,'Tajichka','Female'),
    ('Asgadbek','Niiazov',22,8,'Nemes','Male'),
    ('Ernis','Turgunbai uulu',25,4,'Kyrgyz','Male'),
    ('Ayana','Urmatova',16,5,'Russian','Female'),
    ('Aibiyke','Azimzhanova',20,6,'Russian','Female'),
    ('Nurpazyl','Nabiev',34,3,'Afrika','Male'),
    ('Ernis','Jaichibekov',27,6,'America','Male');



--  DML запросы
select * from students;
select first_name, age,nationality from students;
select first_name as name from students;

select * from students where age >= 20;
select * from students where age <= 20;

select * from students where age > 20 and nationality='Kyrgyz';
select * from students where grade > 5 ;
select * from students limit 5;
select * from students offset 5;
select * from students offset 5 limit 3;

select * from students where id = 5;
select * from students where id in (5,7,9);
select * from students where id not in (5,7,9);
select * from students where age between 18 and 25;

select * from students where first_name like 'A%';
select * from students where first_name ilike 'a%';
select * from students where first_name ilike 'A%' and last_name ilike 'A%';

select distinct nationality from students;
select * from students order by age;
select * from students order by age desc;
select * from students order by first_name;

select * from students order by id offset 5 rows fetch next 10 rows only;

--  Function
select count(*) as count_of_students from students;
select max(grade) as max_grade , min(grade) as min_grade from students;
select avg(grade) as avg_grade ,round(avg(grade)) from students;
select sum(grade) from students;
select coalesce(grade,0) from students;
select id,concat(first_name,' ',last_name) as full_name from students
                                                        where id in (4,7,3,2)
                                                        order by full_name desc ;

select gender, count(*) from students group by gender;
select nationality, count(*) from students group by nationality;

select nationality, avg(grade) from students group by nationality having avg(grade)>6;


update students set grade = 10 where id = 4 returning *;

delete from students where id = 8 returning *;
select * from students;

