CREATE DATABASE training_management;
use training_management;

CREATE TABLE courses (
    id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(20)
);

CREATE TABLE topics (
    id INT PRIMARY KEY,
    topic VARCHAR(20),
    course_id VARCHAR(20)
);

CREATE TABLE trainers (
    id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(20)
);

CREATE TABLE batches (
    id VARCHAR(20) PRIMARY KEY,
    course_id VARCHAR(20),
    s_date DATE,
    e_date DATE
);

CREATE TABLE trainer_batch (
    id INT PRIMARY KEY,
    trainer_id VARCHAR(20),
    batch_id VARCHAR(20)
    
);



CREATE TABLE candidates (
    id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(20),
    email VARCHAR(20),
    ph_no VARCHAR(15)
);

CREATE TABLE candidate_batch (
    id INT PRIMARY KEY,
    candidate_id VARCHAR(20),
    batch_id VARCHAR(20),
    status VARCHAR(15)
);

CREATE TABLE assignments (
    id VARCHAR(20) PRIMARY KEY,
    title VARCHAR(15),
    descr VARCHAR(15),
    due_date DATE,
    batch_id VARCHAR(20)
);

CREATE TABLE candidate_assign (
    id INT PRIMARY KEY,
    candidate_id VARCHAR(20),
    assignment_id VARCHAR(20),
    sub_date DATE,
    score INT
);


ALTER TABLE topics
ADD FOREIGN KEY (course_id) REFERENCES courses(id);

ALTER TABLE batches
ADD FOREIGN KEY (course_id) REFERENCES courses(id);

ALTER TABLE trainer_batch
ADD FOREIGN KEY (trainer_id) REFERENCES trainers(id),
ADD FOREIGN KEY (batch_id) REFERENCES batches(id);

ALTER TABLE candidate_batch
ADD FOREIGN KEY (candidate_id) REFERENCES candidates(id),
ADD FOREIGN KEY (batch_id) REFERENCES batches(id);

ALTER TABLE assignments
ADD FOREIGN KEY (batch_id) REFERENCES batches(id);


ALTER TABLE candidate_assign
ADD FOREIGN KEY (candidate_id) REFERENCES candidates(id),
ADD FOREIGN KEY (assignment_id) REFERENCES assignments(id);
