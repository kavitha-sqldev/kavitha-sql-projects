-- 1. List all employees with their net salary
SELECT 
    e.empid, 
    e.name, 
    e.dept, 
    es.bsal, 
    es.allow_amt, 
    es.ded_amt, 
    es.netsal
FROM emp e
JOIN empsal es ON e.empid = es.empid;

-- 2. Department-wise average salary
SELECT 
    dept, 
    AVG(netsal) AS Avg_Net_Salary
FROM emp e
JOIN empsal es ON e.empid = es.empid
GROUP BY dept;

-- 3. Allowance details for each employee
SELECT 
    a.empid,
    e.name,
    a.allow_type,
    a.amount
FROM allowan a
JOIN emp e ON a.empid = e.empid;

-- 4. Deduction details for each employee
SELECT 
    d.empid,
    e.name,
    d.ded_type,
    d.d_ed_amt
FROM dedn d
JOIN emp e ON d.empid = e.empid;

-- 5. Attendance summary – count of days present
SELECT 
    empid,
    COUNT(*) AS Present_Days
FROM attn
WHERE status = 'P'
GROUP BY empid;

-- 6. Salary audit trail
SELECT 
    sa.auditid,
    sa.empid,
    e.name,
    sa.old_salary,
    sa.new_salary,
    sa.changed_on
FROM SalaryAudit sa
JOIN emp e ON sa.empid = e.empid
ORDER BY sa.changed_on DESC;
