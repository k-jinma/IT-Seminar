SELECT e.empno, e.name, d.dname FROM employees e
    LEFT OUTER JOIN departments d
        ON e.dept_id = d.dept_id;

select dept_id, empno, name from employees;

select dept_id, dname FROM departments;

SELECT e.empno, e.name, d.dname FROM employees e
    RIGHT OUTER JOIN departments d
        ON e.dept_id = d.dept_id;