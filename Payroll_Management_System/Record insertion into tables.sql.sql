﻿USE [EmpDB]
GO
/****** Object:  Table [dbo].[allowan]    Script Date: 5/29/2025 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------- ALLOWANCES TABLE RECORD INSERTION------ 

INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10001, N'DA', CAST(2000.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10001, N'HRA', CAST(10000.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10001, N'TA', CAST(3000.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10002, N'DA', CAST(2000.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10002, N'HRA', CAST(8000.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10002, N'TA', CAST(3000.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10003, N'DA', CAST(1900.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10003, N'HRA', CAST(7000.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10003, N'TA', CAST(2600.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10004, N'DA', CAST(1500.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10004, N'HRA', CAST(9000.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10004, N'TA', CAST(2800.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10005, N'DA', CAST(1200.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10005, N'HRA', CAST(8000.00 AS Decimal(7, 2)))
INSERT [dbo].[allowan] ([empid], [allow_type], [amount]) VALUES (10005, N'TA', CAST(1600.00 AS Decimal(7, 2)))

	 ---------- ATTENDANCE TABLE RECORD INSERTION------
	 GO
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10001, CAST(N'2025-05-01' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10001, CAST(N'2025-05-02' AS Date), N'A')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10001, CAST(N'2025-05-04' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10001, CAST(N'2025-05-05' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10001, CAST(N'2025-05-06' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10002, CAST(N'2025-05-01' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10002, CAST(N'2025-05-02' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10002, CAST(N'2025-05-04' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10002, CAST(N'2025-05-05' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10002, CAST(N'2025-05-06' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10003, CAST(N'2025-05-01' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10003, CAST(N'2025-05-02' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10003, CAST(N'2025-05-04' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10003, CAST(N'2025-05-05' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10003, CAST(N'2025-05-06' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10004, CAST(N'2025-05-01' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10004, CAST(N'2025-05-02' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10004, CAST(N'2025-05-04' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10004, CAST(N'2025-05-05' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10004, CAST(N'2025-05-06' AS Date), N'L')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10005, CAST(N'2025-05-01' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10005, CAST(N'2025-05-02' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10005, CAST(N'2025-05-04' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10005, CAST(N'2025-05-05' AS Date), N'P')
INSERT [dbo].[attn] ([empid], [attn_dt], [status]) VALUES (10005, CAST(N'2025-05-06' AS Date), N'P')

---------- DEDUCTIONS TABLE RECORD INSERTION------	 
	 GO
INSERT [dbo].[dedn] ([empid], [ded_type], [d_ed_amt]) VALUES (10001, N'Insur', CAST(300.00 AS Decimal(7, 2)))
INSERT [dbo].[dedn] ([empid], [ded_type], [d_ed_amt]) VALUES (10001, N'PF', CAST(300.00 AS Decimal(7, 2)))
INSERT [dbo].[dedn] ([empid], [ded_type], [d_ed_amt]) VALUES (10002, N'Insur', CAST(300.00 AS Decimal(7, 2)))
INSERT [dbo].[dedn] ([empid], [ded_type], [d_ed_amt]) VALUES (10002, N'PF', CAST(200.00 AS Decimal(7, 2)))
INSERT [dbo].[dedn] ([empid], [ded_type], [d_ed_amt]) VALUES (10003, N'Insur', CAST(300.00 AS Decimal(7, 2)))
INSERT [dbo].[dedn] ([empid], [ded_type], [d_ed_amt]) VALUES (10003, N'PF', CAST(100.00 AS Decimal(7, 2)))
INSERT [dbo].[dedn] ([empid], [ded_type], [d_ed_amt]) VALUES (10004, N'Insur', CAST(300.00 AS Decimal(7, 2)))
INSERT [dbo].[dedn] ([empid], [ded_type], [d_ed_amt]) VALUES (10004, N'PF', CAST(250.00 AS Decimal(7, 2)))
INSERT [dbo].[dedn] ([empid], [ded_type], [d_ed_amt]) VALUES (10005, N'Insur', CAST(300.00 AS Decimal(7, 2)))
INSERT [dbo].[dedn] ([empid], [ded_type], [d_ed_amt]) VALUES (10005, N'PF', CAST(180.00 AS Decimal(7, 2)))

---------- DEPARTMENT TABLE RECORD INSERTION------
	 GO
INSERT [dbo].[dept] ([deptid], [dept_na]) VALUES (10, N'prod')
INSERT [dbo].[dept] ([deptid], [dept_na]) VALUES (20, N'Sales')
INSERT [dbo].[dept] ([deptid], [dept_na]) VALUES (30, N'IT')
INSERT [dbo].[dept] ([deptid], [dept_na]) VALUES (40, N'Accts')
INSERT [dbo].[dept] ([deptid], [dept_na]) VALUES (50, N'purch')
INSERT [dbo].[dept] ([deptid], [dept_na]) VALUES (60, N'Finan')
INSERT [dbo].[dept] ([deptid], [dept_na]) VALUES (70, N'Personnel')

---------- eMPLOYEE TABLE RECORD INSERTION------	 
	 GO
SET IDENTITY_INSERT [dbo].[emp] ON 

INSERT [dbo].[emp] ([empid], [name], [doj], [desg], [dept], [addr], [ph], [bsal]) VALUES (10001, N'sumi', CAST(N'2025-01-17' AS Date), N'Mgr', N'prod', N'Guindy', N'92036 07543', CAST(80000.00 AS Decimal(10, 2)))
INSERT [dbo].[emp] ([empid], [name], [doj], [desg], [dept], [addr], [ph], [bsal]) VALUES (10002, N'Joe', CAST(N'2025-02-11' AS Date), N'Supervisor', N'Sales', N'Saidapet', N'927846 02343', CAST(40000.00 AS Decimal(10, 2)))
INSERT [dbo].[emp] ([empid], [name], [doj], [desg], [dept], [addr], [ph], [bsal]) VALUES (10003, N'Amu', CAST(N'2025-07-14' AS Date), N'Asst prog', N'IT', N'ECR', N'92896 07563', CAST(300000.00 AS Decimal(10, 2)))
INSERT [dbo].[emp] ([empid], [name], [doj], [desg], [dept], [addr], [ph], [bsal]) VALUES (10004, N'Ram', CAST(N'2025-09-15' AS Date), N'Asst Mgr', N'Accts', N'Adyar', N'97266 07842', CAST(60000.00 AS Decimal(10, 2)))
INSERT [dbo].[emp] ([empid], [name], [doj], [desg], [dept], [addr], [ph], [bsal]) VALUES (10005, N'Uma', CAST(N'2024-11-17' AS Date), N'Incharge', N'purch', N'Teynampet', N'41036 07781', CAST(35000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[emp] OFF

