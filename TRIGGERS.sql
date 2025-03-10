#1 . Create a table named teachers with fields id, name, subject, experience and salary and insert 8 rows.

CREATE TABLE teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    names VARCHAR(100) NOT NULL,
    subjects VARCHAR(50) NOT NULL,
    experience INT NOT NULL,
    salary DECIMAL(10,2) NOT NULL
);
INSERT INTO teachers (names, subjects, experience, salary) VALUES
('tom jacob', 'Mathematics', 8, 55000),
('aleena david', 'Science', 12, 60000),
('Rajesh Kumar', 'English', 5, 45000),
('amir khan', 'Computer Science', 10, 70000),
('ram Reddy', 'Physics', 15, 80000),
('hasan ali', 'Chemistry', 7, 50000),
('Sandeep Yadav', 'Biology', 9, 48000),
('leo das', 'History', 11, 55000);

.#2 Create a before insert trigger named before_insert_teacher that will raise an error “salary cannot be negative” if the salary inserted to the table is less than zero.
DELIMITER $$
CREATE TRIGGER before_insert_teacher
BEFORE INSERT ON teachers
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END $$
DELIMITER ;
#3  Create an after insert trigger named after_insert_teacher that inserts a row with teacher_id,action, timestamp to a table called teacher_log when a new entry gets inserted to the teacher table. tecaher_id -> column of teacher table, action -> the trigger action, timestamp -> time at which the new row has got inserte

CREATE TABLE teacher_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_id INT,
    action VARCHAR(50),
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (teacher_id) REFERENCES teachers(id) ON DELETE CASCADE
);
# after insert  trigger to log insert actions
DELIMITER $$
CREATE TRIGGER after_insert_teacher
AFTER INSERT ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (NEW.id, 'INSERT', NOW());
END $$
DELIMITER ;

#4 . Create a before delete trigger that will raise an error when you try to delete a row that has experience greater than 10 years. 
DELIMITER $$
create trigger BEFORE_DELETE_TEACHER
before delete ON teachers
FOR each row
begin
IF OLD.EXPERIENCE > 10 then
SIGNAL sqlstate '45000'
SET message_text = 'CANT DELETE TEACHER ';
END IF ;
END $$
DELIMITER ;

#5 . Create an after delete trigger that will insert a row to teacher_log table when that row is deleted from teacher table.

DELIMITER $$
CREATE TRIGGER after_delete_teacher
AFTER DELETE ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (OLD.id, 'DELETE', NOW());
END $$
DELIMITER ;







