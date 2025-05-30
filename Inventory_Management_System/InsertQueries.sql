USE [InventoryDB2]
GO
SET IDENTITY_INSERT [dbo].[prod] ON 

INSERT [dbo].[prod] ([prodid], [prod_na], [category], [prod_pr], [stk], [reord_lvl]) VALUES (101, N'Laptop', N'Electronics', CAST(45000.00 AS Decimal(7, 2)), 50, 10)
INSERT [dbo].[prod] ([prodid], [prod_na], [category], [prod_pr], [stk], [reord_lvl]) VALUES (102, N'Mouse', N'Electronics', CAST(500.00 AS Decimal(7, 2)), 200, 50)
INSERT [dbo].[prod] ([prodid], [prod_na], [category], [prod_pr], [stk], [reord_lvl]) VALUES (103, N'Keyboard', N'Electronics', CAST(1000.00 AS Decimal(7, 2)), 150, 30)
INSERT [dbo].[prod] ([prodid], [prod_na], [category], [prod_pr], [stk], [reord_lvl]) VALUES (104, N'Chair', N'Furniture', CAST(2500.00 AS Decimal(7, 2)), 80, 20)
INSERT [dbo].[prod] ([prodid], [prod_na], [category], [prod_pr], [stk], [reord_lvl]) VALUES (105, N'Desk', N'Furniture', CAST(5500.00 AS Decimal(7, 2)), 60, 15)
INSERT [dbo].[prod] ([prodid], [prod_na], [category], [prod_pr], [stk], [reord_lvl]) VALUES (106, N'kite', N'Stationery', CAST(130.00 AS Decimal(7, 2)), 40, 10)
SET IDENTITY_INSERT [dbo].[prod] OFF
GO
SET IDENTITY_INSERT [dbo].[supplier] ON 

INSERT [dbo].[supplier] ([suppid], [supp_na], [addr], [ph]) VALUES (103, N'ABC Supply', N'Delhi', N'9112345678')
INSERT [dbo].[supplier] ([suppid], [supp_na], [addr], [ph]) VALUES (104, N'TechSource', N'Mumbai', N'9123456789')
INSERT [dbo].[supplier] ([suppid], [supp_na], [addr], [ph]) VALUES (105, N'OfficeMart', N'Pune', N'9134567890')
SET IDENTITY_INSERT [dbo].[supplier] OFF
GO
INSERT [dbo].[SupplierProd] ([Suppid], [Prodid]) VALUES (103, 101)
INSERT [dbo].[SupplierProd] ([Suppid], [Prodid]) VALUES (103, 102)
INSERT [dbo].[SupplierProd] ([Suppid], [Prodid]) VALUES (103, 103)
INSERT [dbo].[SupplierProd] ([Suppid], [Prodid]) VALUES (104, 104)
INSERT [dbo].[SupplierProd] ([Suppid], [Prodid]) VALUES (104, 105)
INSERT [dbo].[SupplierProd] ([Suppid], [Prodid]) VALUES (105, 102)
INSERT [dbo].[SupplierProd] ([Suppid], [Prodid]) VALUES (105, 105)
GO
SET IDENTITY_INSERT [dbo].[PurcOrd] ON 

INSERT [dbo].[PurcOrd] ([purcid], [prodid], [suppid], [purcdt], [qty]) VALUES (4, 103, 103, CAST(N'2025-05-18' AS Date), 10)
INSERT [dbo].[PurcOrd] ([purcid], [prodid], [suppid], [purcdt], [qty]) VALUES (5, 103, 103, CAST(N'2025-05-20' AS Date), 20)
INSERT [dbo].[PurcOrd] ([purcid], [prodid], [suppid], [purcdt], [qty]) VALUES (6, 104, 103, CAST(N'2025-05-22' AS Date), 15)
INSERT [dbo].[PurcOrd] ([purcid], [prodid], [suppid], [purcdt], [qty]) VALUES (7, 104, 104, CAST(N'2025-05-23' AS Date), 5)
INSERT [dbo].[PurcOrd] ([purcid], [prodid], [suppid], [purcdt], [qty]) VALUES (8, 105, 105, CAST(N'2025-05-25' AS Date), 8)
INSERT [dbo].[PurcOrd] ([purcid], [prodid], [suppid], [purcdt], [qty]) VALUES (10, 106, 104, CAST(N'2025-04-05' AS Date), 10)
INSERT [dbo].[PurcOrd] ([purcid], [prodid], [suppid], [purcdt], [qty]) VALUES (11, 103, 104, CAST(N'2025-05-05' AS Date), 400)
SET IDENTITY_INSERT [dbo].[PurcOrd] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Custid], [Custna], [addr], [ph]) VALUES (1, N'Ravi Kumar', N'Chennai', N'9876543210')
INSERT [dbo].[Customer] ([Custid], [Custna], [addr], [ph]) VALUES (2, N'Divya R', N'Bangalore', N'9823456789')
INSERT [dbo].[Customer] ([Custid], [Custna], [addr], [ph]) VALUES (3, N'Arun M', N'Hyderabad', N'9789012345')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[SaleOrd] ON 

INSERT [dbo].[SaleOrd] ([saleid], [prodid], [custid], [saledt], [pr], [saleqty]) VALUES (1, 101, 1, CAST(N'2025-05-26' AS Date), CAST(48000.00 AS Decimal(9, 2)), 2)
INSERT [dbo].[SaleOrd] ([saleid], [prodid], [custid], [saledt], [pr], [saleqty]) VALUES (2, 102, 2, CAST(N'2025-05-26' AS Date), CAST(600.00 AS Decimal(9, 2)), 5)
INSERT [dbo].[SaleOrd] ([saleid], [prodid], [custid], [saledt], [pr], [saleqty]) VALUES (3, 103, 3, CAST(N'2025-05-27' AS Date), CAST(1100.00 AS Decimal(9, 2)), 3)
INSERT [dbo].[SaleOrd] ([saleid], [prodid], [custid], [saledt], [pr], [saleqty]) VALUES (4, 104, 1, CAST(N'2025-05-28' AS Date), CAST(2700.00 AS Decimal(9, 2)), 1)
INSERT [dbo].[SaleOrd] ([saleid], [prodid], [custid], [saledt], [pr], [saleqty]) VALUES (5, 103, 3, CAST(N'2025-05-21' AS Date), CAST(150.00 AS Decimal(9, 2)), 100)
INSERT [dbo].[SaleOrd] ([saleid], [prodid], [custid], [saledt], [pr], [saleqty]) VALUES (8, 103, 3, CAST(N'2025-05-21' AS Date), CAST(170.00 AS Decimal(9, 2)), 15)
INSERT [dbo].[SaleOrd] ([saleid], [prodid], [custid], [saledt], [pr], [saleqty]) VALUES (9, 103, 3, CAST(N'2025-05-22' AS Date), CAST(170.00 AS Decimal(9, 2)), 15)
SET IDENTITY_INSERT [dbo].[SaleOrd] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([invid], [prodid], [stkdt], [stkqty]) VALUES (1, 101, CAST(N'2025-05-25' AS Date), 10)
INSERT [dbo].[Inventory] ([invid], [prodid], [stkdt], [stkqty]) VALUES (2, 102, CAST(N'2025-05-26' AS Date), 20)
INSERT [dbo].[Inventory] ([invid], [prodid], [stkdt], [stkqty]) VALUES (3, 103, CAST(N'2025-05-22' AS Date), 285)
INSERT [dbo].[Inventory] ([invid], [prodid], [stkdt], [stkqty]) VALUES (4, 104, CAST(N'2025-05-27' AS Date), 5)
INSERT [dbo].[Inventory] ([invid], [prodid], [stkdt], [stkqty]) VALUES (5, 105, CAST(N'2025-05-28' AS Date), 8)
INSERT [dbo].[Inventory] ([invid], [prodid], [stkdt], [stkqty]) VALUES (6, 106, CAST(N'2025-04-05' AS Date), 10)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
