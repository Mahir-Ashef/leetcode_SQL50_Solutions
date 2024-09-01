-- 185. Department Top Three Salaries


SELECT Department, Employee, salary FROM
(SELECT Department.name AS Department, Employee.name AS Employee, salary, DENSE_RANK() OVER (PARTITION BY Department.name ORDER BY salary DESC) AS rn
FROM Employee JOIN Department
ON Employee.departmentId = Department.id) AS sq
WHERE rn <= 3;