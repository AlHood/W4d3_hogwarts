DROP TABLE students CASCADE; 
DROP TABLE houses CASCADE;


CREATE TABLE houses (
id SERIAL8 primary key,
house_name VARCHAR(255),
logo_url VARCHAR(255)
);

CREATE TABLE students (
id SERIAL8 primary key, 
first_name VARCHAR(255),
surname VARCHAR(255),
house_id INT8 REFERENCES houses(id) ON DELETE CASCADE,
age INT4
);




