INSERT INTO courses VALUES ('C1', 'Python');
INSERT INTO courses VALUES ('C2', 'Java');
INSERT INTO courses VALUES ('C3', 'C++');
INSERT INTO courses VALUES ('C4', 'SQL');
INSERT INTO courses VALUES ('C5', 'HTML');


INSERT INTO topics VALUES (1, 'Loops', 'C1');
INSERT INTO topics VALUES (2, 'OOP', 'C2');
INSERT INTO topics VALUES (3, 'Pointers', 'C3');
INSERT INTO topics VALUES (4, 'Joins', 'C4');
INSERT INTO topics VALUES (5, 'Tags', 'C5');

INSERT INTO trainers VALUES ('T1', 'Alice');
INSERT INTO trainers VALUES ('T2', 'Bob');
INSERT INTO trainers VALUES ('T3', 'Charlie');
INSERT INTO trainers VALUES ('T4', 'David');
INSERT INTO trainers VALUES ('T5', 'Eva');

INSERT INTO batches VALUES ('B1', 'C1', '2025-07-01', '2025-09-30');
INSERT INTO batches VALUES ('B2', 'C2', '2025-07-15', '2025-10-15');
INSERT INTO batches VALUES ('B3', 'C3', '2025-08-01', '2025-11-01');
INSERT INTO batches VALUES ('B4', 'C4', '2025-08-10', '2025-11-10');
INSERT INTO batches VALUES ('B5', 'C5', '2025-09-01', '2025-12-01');

INSERT INTO trainer_batch VALUES (1, 'T1', 'B1');
INSERT INTO trainer_batch VALUES (2, 'T2', 'B2');
INSERT INTO trainer_batch VALUES (3, 'T3', 'B3');
INSERT INTO trainer_batch VALUES (4, 'T4', 'B4');
INSERT INTO trainer_batch VALUES (5, 'T5', 'B5');

INSERT INTO candidates VALUES ('CN1', 'John', 'john@mail.com', '9999999991');
INSERT INTO candidates VALUES ('CN2', 'Mary', 'mary@mail.com', '9999999992');
INSERT INTO candidates VALUES ('CN3', 'Paul', 'paul@mail.com', '9999999993');
INSERT INTO candidates VALUES ('CN4', 'Sara', 'sara@mail.com', '9999999994');
INSERT INTO candidates VALUES ('CN5', 'Mike', 'mike@mail.com', '9999999995');

INSERT INTO candidate_batch VALUES (1, 'CN1', 'B1', 'in_progress');
INSERT INTO candidate_batch VALUES (2, 'CN2', 'B2', 'in_progress');
INSERT INTO candidate_batch VALUES (3, 'CN3', 'B3', 'completed');
INSERT INTO candidate_batch VALUES (4, 'CN4', 'B4', 'in_progress');
INSERT INTO candidate_batch VALUES (5, 'CN5', 'B5', 'terminated');

INSERT INTO assignments VALUES ('A1', 'HW1', 'Basics', '2025-07-10', 'B1');
INSERT INTO assignments VALUES ('A2', 'HW2', 'OOPs', '2025-07-20', 'B2');
INSERT INTO assignments VALUES ('A3', 'HW3', 'Pointers', '2025-08-01', 'B3');
INSERT INTO assignments VALUES ('A4', 'HW4', 'SQL Qs', '2025-08-15', 'B4');
INSERT INTO assignments VALUES ('A5', 'HW5', 'HTML Tags', '2025-09-01', 'B5');

INSERT INTO candidate_assign VALUES (1, 'CN1', 'A1', '2025-07-09', 85);
INSERT INTO candidate_assign VALUES (2, 'CN2', 'A2', '2025-07-19', 90);
INSERT INTO candidate_assign VALUES (3, 'CN3', 'A3', '2025-08-02', 75);
INSERT INTO candidate_assign VALUES (4, 'CN4', 'A4', '2025-08-14', 88);
INSERT INTO candidate_assign VALUES (5, 'CN5', 'A5', '2025-08-31', 92);
