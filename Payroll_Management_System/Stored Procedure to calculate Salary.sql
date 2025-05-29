USE [EmpDB]
GO
/****** Object:  StoredProcedure [dbo].[CalMonthSal]    Script Date: 5/29/2025 4:53:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[CalMonthSal]
    @SalMonth INT,
    @Salyr INT
AS
BEGIN
    SELECT 
        e.EmpID,
        e.Name,
        e.bsal,
        COUNT(CASE WHEN a.Status = 'P' THEN 1 END) AS PresentDays,
        ROUND(e.bsal / 26.0, 2) AS OneDaySalary,
        ROUND((e.bsal / 26.0) * COUNT(CASE WHEN a.Status = 'P' THEN 1 END), 2) AS EarnedSalary,
        ISNULL(SUM(al.amount), 0) AS TotalAllowances,
        ISNULL(SUM(d.d_ed_amt), 0) AS TotalDeductions,
        ROUND(
            ((e.bsal / 26.0) * COUNT(CASE WHEN a.Status = 'P' THEN 1 END)) +
            ISNULL(SUM(al.amount), 0) - ISNULL(SUM(d.d_ed_amt), 0), 2) AS NetSalary
    FROM  Emp e
    LEFT JOIN 
        Attn a ON e.EmpID = a.EmpID 
        AND MONTH(a.attn_dt) = @SalMonth AND YEAR(a.attn_dt) = @Salyr
    LEFT JOIN 
        Allowan al ON e.EmpID = al.EmpID
    LEFT JOIN 
        Dedn d ON e.EmpID = d.EmpID
    GROUP BY 
        e.EmpID, e.Name, e.bsal;
END;
