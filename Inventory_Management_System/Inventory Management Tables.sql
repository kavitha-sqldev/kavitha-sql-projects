--Customer Table
USE [InventoryDB2]
GO

/****** Object:  Table [dbo].[Customer]    Script Date: 5/29/2025 9:06:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
	[Custid] [int] IDENTITY(1,1) NOT NULL,
	[Custna] [varchar](20) NULL,
	[addr] [varchar](45) NULL,
	[ph] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Custid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


--Inventory Table
USE [InventoryDB2]
GO

/****** Object:  Table [dbo].[Inventory]    Script Date: 5/29/2025 9:10:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Inventory](
	[invid] [int] IDENTITY(1,1) NOT NULL,
	[prodid] [int] NULL,
	[stkdt] [date] NULL,
	[stkqty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[invid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([prodid])
REFERENCES [dbo].[prod] ([prodid])
GO

--Products details
USE [InventoryDB2]
GO

/****** Object:  Table [dbo].[prod]    Script Date: 5/29/2025 9:12:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[prod](
	[prodid] [int] IDENTITY(101,1) NOT NULL,
	[prod_na] [varchar](15) NULL,
	[category] [varchar](15) NULL,
	[prod_pr] [decimal](7, 2) NULL,
	[stk] [int] NULL,
	[reord_lvl] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[prodid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

--Purchase Order Table
USE [InventoryDB2]
GO

/****** Object:  Table [dbo].[PurcOrd]    Script Date: 5/29/2025 9:14:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PurcOrd](
	[purcid] [int] IDENTITY(1,1) NOT NULL,
	[prodid] [int] NULL,
	[suppid] [int] NULL,
	[purcdt] [date] NULL,
	[qty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[purcid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PurcOrd]  WITH CHECK ADD FOREIGN KEY([prodid])
REFERENCES [dbo].[prod] ([prodid])
GO

ALTER TABLE [dbo].[PurcOrd]  WITH CHECK ADD FOREIGN KEY([suppid])
REFERENCES [dbo].[supplier] ([suppid])
GO


--SalesOrder Table
USE [InventoryDB2]
GO

/****** Object:  Table [dbo].[SaleOrd]    Script Date: 5/29/2025 9:19:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SaleOrd](
	[saleid] [int] IDENTITY(1,1) NOT NULL,
	[prodid] [int] NULL,
	[custid] [int] NULL,
	[saledt] [date] NULL,
	[pr] [decimal](9, 2) NULL,
	[saleqty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[saleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SaleOrd]  WITH CHECK ADD FOREIGN KEY([custid])
REFERENCES [dbo].[Customer] ([Custid])
GO

ALTER TABLE [dbo].[SaleOrd]  WITH CHECK ADD FOREIGN KEY([prodid])
REFERENCES [dbo].[prod] ([prodid])
GO

--Supplier Table 
USE [InventoryDB2]
GO

/****** Object:  Table [dbo].[supplier]    Script Date: 5/29/2025 9:24:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[supplier](
	[suppid] [int] IDENTITY(101,1) NOT NULL,
	[supp_na] [varchar](15) NULL,
	[addr] [varchar](45) NULL,
	[ph] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[suppid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


--SupplierProd Table 
USE [InventoryDB2]
GO

/****** Object:  Table [dbo].[SupplierProd]    Script Date: 5/29/2025 9:25:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SupplierProd](
	[Suppid] [int] NOT NULL,
	[Prodid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Suppid] ASC,
	[Prodid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SupplierProd]  WITH CHECK ADD FOREIGN KEY([Prodid])
REFERENCES [dbo].[prod] ([prodid])
GO

ALTER TABLE [dbo].[SupplierProd]  WITH CHECK ADD FOREIGN KEY([Suppid])
REFERENCES [dbo].[supplier] ([suppid])
GO










