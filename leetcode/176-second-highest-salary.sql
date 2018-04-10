#下面的语句，当第二高的薪水不存在的时候，不会返回NULL,所以会报错
select distinct salary as SecondHighestSalary 
from Employee 
order by salary desc 
limit 1 offset 1;

#这是正确答案
SELECT
(SELECT DISTINCT Salary
FROM Employee
ORDER BY Salary DESC
LIMIT 1 OFFSET 1) 
AS SecondHighestSalary;