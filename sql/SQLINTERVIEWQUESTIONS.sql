use empDB;

SELECT * FROM Emp1;
/*2nd highest salary*/

select max(salary) from emp1 where salary < (
select max(salary) from emp1);

/*3rd highest salary*/
select max(salary) from emp1 where salary <(
select max(salary) from emp1 where salary < (
select max(salary) from emp1));

/*nth highest salary*/
select top 1 salary from (
select distinct top 5 salary from emp1 order by salary desc) result
order by salary
;

/*cte- common table expression*/
with result as (
select salary , DENSE_RANK() over (order by salary desc) as denserank
from emp1)
select top 1 salary from result
where result.denserank = 1
;