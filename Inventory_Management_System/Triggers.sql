/***  AFTER INSERT in  PurcOrd  ***/
USE [InventoryDB2]
GO
/****** Object:  Trigger [dbo].[trg_UpdateInventory_AfterPurchase]    Script Date: 5/29/2025 10:28:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trg_UpdateInventory_AfterPurchase]
ON [dbo].[PurcOrd]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    MERGE Inventory AS target
    USING (SELECT prodid, purcdt AS stkdt, qty FROM inserted) AS source
    ON target.prodid = source.prodid
    WHEN MATCHED THEN
        UPDATE SET stkqty = stkqty + source.qty, stkdt = source.stkdt
    WHEN NOT MATCHED THEN
        INSERT (prodid, stkdt, stkqty)
        VALUES (source.prodid, source.stkdt, source.qty);
END;

/***  AFTER INSERT in  SaleOrd  ***/
USE [InventoryDB2]
GO
/****** Object:  Trigger [dbo].[trg_UpdateInventory_AfterSale]    Script Date: 5/29/2025 10:29:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trg_UpdateInventory_AfterSale]
ON [dbo].[SaleOrd]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE inv
    SET inv.stkqty = inv.stkqty - ins.saleqty,
        inv.stkdt = ins.saledt
    FROM Inventory inv
    JOIN inserted ins ON inv.prodid = ins.prodid;
END;
