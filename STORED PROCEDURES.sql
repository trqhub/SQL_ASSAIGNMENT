1. Create a stored procedure that takes in IN parameters for all the columns in the Worker table and adds a new record to the table and then invokes the procedure call
DELIMITER $$

create procedure addworkers(
IN p_worker_id INT,
IN p_FirstName CHAR(25),
IN p_LastName CHAR(25),
IN p_Salary INT(15),
IN p_JoiningDate DATETIME,
IN p_Department CHAR(25)
)
BEGIN
 INSERT INTO Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department)
    VALUES (p_Worker_Id, p_FirstName, p_LastName, p_Salary, p_JoiningDate, p_Department);
END $$

DELIMITER ;

#2 Write stored procedure takes in an IN parameter for WORKER_ID and an OUT parameter for SALARY. It should retrieve the salary of the worker with the given ID and returns it in the p_salary parameter. Then make the procedure cal


DELIMITER $$

CREATE PROCEDURE Getworkersalary(
    IN p_Worker_Id INT,
    OUT p_Salary INT
)
BEGIN
    SELECT Salary INTO p_Salary FROM Worker WHERE Worker_Id = p_Worker_Id;
END $$
DELIMITER ;

.#3 Create a stored procedure that takes in IN parameters for WORKER_ID and DEPARTMENT. It should update the department of the worker with the given ID. Then make a procedure call.

DELIMITER $$

CREATE PROCEDURE Updateworkerdepartment(
    IN p_Worker_Id INT,
    IN p_Department CHAR(25)
)
BEGIN
    UPDATE Worker SET Department = p_Department WHERE Worker_Id = p_Worker_Id;
END $$

DELIMITER ;


#4 Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT parameter for p_workerCount. It should retrieve the number of workers in the given department and returns it in the p_workerCount parameter. Make procedure call.

DELIMITER $$

CREATE PROCEDURE Getworkercountbydepartment(
    IN p_Department CHAR(25),
    OUT p_WorkerCount INT
)
BEGIN
    SELECT COUNT(*) INTO p_WorkerCount FROM Worker WHERE Department = p_Department;
END $$

DELIMITER ;

#5  Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT parameter for p_avgSalary. It should retrieve the average salary of all workers in the given department and returns it in the p_avgSalary parameter and call the procedure.
DELIMITER $$

CREATE PROCEDURE Getaveragesalarybydepartment(
    IN p_Department CHAR(25),
    OUT p_AvgSalary DECIMAL(10,2)
)
BEGIN
    SELECT AVG(Salary) INTO p_AvgSalary FROM Worker WHERE Department = p_Department;
END $$

DELIMITER ;





