----------------------------------- STORED PROCEDURES ------------------------- 

				   Inserting Products 

-------------------------------------------------------------------------------

CREATE PROCEDURE sp_InsertProduct
    @prod_na VARCHAR(15),
    @category VARCHAR(15),
    @prod_pr DECIMAL(7,2),
    @stk INT,
    @reord_lvl INT
AS
BEGIN
    INSERT INTO prod (prod_na, category, prod_pr, stk, reord_lvl)
    VALUES (@prod_na, @category, @prod_pr, @stk, @reord_lvl);
END;

-------------------------------------------------------------------------------
			
			To Get Stock Which are Low in Number 

-------------------------------------------------------------------------------

CREATE PROCEDURE sp_GetLowStockProducts
AS
BEGIN
    SELECT prodid, prod_na, stk, reord_lvl
    FROM prod
    WHERE stk < reord_lvl;
END;

-------------------------------------------------------------------------------

			               Sales Report

-------------------------------------------------------------------------------

CREATE PROCEDURE sp_SalesReportByProduct
AS
BEGIN
    SELECT 
        P.prod_na,
        SUM(S.saleqty) AS TotalSold,
        SUM(S.pr * S.saleqty) AS TotalRevenue
    FROM SaleOrd S
    JOIN prod P ON S.prodid = P.prodid
    GROUP BY P.prod_na;
END;
