SELECT * FROM candidate_batch
WHERE candidate_id = 'CN2';

SELECT * FROM trainer_batch
WHERE batch_id = 'B4';

SELECT * FROM topics
WHERE course_id = 'C2';


SELECT candidates.name, candidate_assign.assignment_id, candidate_assign.score FROM candidates 
JOIN candidate_assign
ON candidates.id=candidate_assign.candidate_id;


SELECT candidates.name, candidate_batch.batch_id, candidate_batch.status FROM candidates 
JOIN candidate_batch
ON candidates.id=candidate_batch.candidate_id
WHERE candidate_batch.status='completed';
