## Payroll Management System  
This project handles employee salary, allowances, deductions, and payslip generation using SQL Server.

# Payroll Management System 💼

This project simulates a payroll system using SQL Server.

---

### ✅ Features:
- Manage employee records, departments, and designations
- Maintain attendance, allowances, and deductions
- Track salary components and compute net salary
- Automatically log salary updates via trigger
- Generate reports for department-wise salaries and employee earnings

---

### 🗂️ Tables Structure:

#### 1. `emp` – Employee Details
| Column   | Data Type     | Description             |
|----------|----------------|-------------------------|
| empid    | int (PK)       | Employee ID             |
| name     | varchar(20)    | Employee Name           |
| doj      | date           | Date of Joining         |
| desg     | varchar(20)    | Designation             |
| dept     | varchar(20)    | Department ID (FK)      |
| addr     | varchar(20)    | Address                 |
| ph       | varchar(15)    | Phone Number            |
| bsal     | decimal(10,2)  | Basic Salary            |

#### 2. `attn` – Attendance
| Column    | Data Type     | Description         |
|-----------|---------------|---------------------|
| empid     | int (PK, FK)  | Employee ID         |
| attn_dt   | date (PK)     | Attendance Date     |
| status    | varchar(1)    | P (Present) / A     |

#### 3. `allowan` – Allowances
| Column      | Data Type     | Description         |
|-------------|---------------|---------------------|
| empid       | int (PK, FK)  | Employee ID         |
| allow_type  | varchar(3)    | Type of Allowance   |
| amount      | decimal(7,2)  | Amount              |

#### 4. `dedn` – Deductions
| Column    | Data Type     | Description        |
|-----------|---------------|--------------------|
| empid     | int (PK, FK)  | Employee ID        |
| ded_type  | varchar(15)   | Type of Deduction  |
| d_ed_amt  | decimal(7,2)  | Amount             |

#### 5. `dept` – Department
| Column    | Data Type     | Description       |
|-----------|---------------|-------------------|
| deptid    | int           | Department ID     |
| dept_na   | varchar(20)   | Department Name   |

#### 6. `empsal` – Salary Computation
| Column     | Data Type      | Description         |
|------------|----------------|---------------------|
| empid      | int (FK)       | Employee ID         |
| bsal       | decimal(10,2)  | Basic Salary        |
| allow_amt  | decimal(9,2)   | Allowances          |
| ded_amt    | decimal(9,2)   | Deductions          |
| netsal     | decimal(9,2)   | Net Salary          |

#### 7. `SalaryAudit` – Audit Trail *(used in Trigger)*
| Column      | Data Type       | Description               |
|-------------|-----------------|---------------------------|
| auditid     | int (PK)        | Audit ID (auto-increment) |
| empid       | int             | Employee ID               |
| old_salary  | decimal(10,2)   | Previous salary           |
| new_salary  | decimal(10,2)   | Updated salary            |
| changed_on  | datetime        | Date of update            |

---

### 📂 Included Files:
- `Table Creation Queries.sql` – Table creation scripts
- `Record Insertion into tables.sql` – Sample data inserts
- 'Cal_sal.sql- Stored procedure to calculate salary
- `Trigger.sql` – Salary audit trigger
- `Payroll_Reports.sql` – Example queries and reports

---

### 🔁 To-Do / Enhancements:
- Monthly payslip generator

---

👩‍💻 Created by **Kavitha** as part of a learning and portfolio-building journey.

