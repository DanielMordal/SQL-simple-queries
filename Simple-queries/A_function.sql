#A function that receives an employee code and retrieves the city in which the employee works.

DELIMITER //

CREATE FUNCTION check_city_func (emp_code INT)
RETURNS VARCHAR(50) DETERMINISTIC

BEGIN

   DECLARE emp_city VARCHAR(50);
  
   SELECT o.city INTO emp_city 
   FROM employees e
   JOIN offices o 
   ON e.officeCode = o.officeCode 
   WHERE e.employeeNumber = emp_code;
  
   RETURN emp_city;

END; //

DELIMITER ;
