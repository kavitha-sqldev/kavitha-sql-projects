-- Trigger to log salary changes
CREATE TRIGGER trg_LogSalaryUpdate
ON empsal
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO SalaryAudit (empid, old_salary, new_salary, changed_on)
    SELECT 
        d.empid,
        d.bsal,
        i.bsal,
        GETDATE()
    FROM deleted d
    JOIN inserted i ON d.empid = i.empid
    WHERE d.bsal <> i.bsal;
END;
