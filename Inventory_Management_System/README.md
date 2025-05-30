## Inventory Management System  
This project handles Product Details, Customer Details, Supplier details, SupplierProducts,PurchaseOrders, SalesOrder and Inventory Details 
This project triggers Inventory Stock and stock updated date on inserting values into purchaseOrders or SalesOrder table.
This  generates invoice  using SQL Server Management Studio.

# Inventory Management System 📦

This project simulates a basic Inventory Management System using SQL Server. It includes functionality to manage products, suppliers, customers, purchase and sales orders, and automatic stock updates using triggers.

---

## ✅ Features

- Manage **Products**, **Suppliers**, **Customers**
- Record and track **Sales** and **Purchase Orders**
- Maintain current **stock levels** in the Inventory table
- Automatically update inventory stock using **AFTER INSERT triggers**
- Analyze inventory through **sample SQL reports**

---

## 🗂 Database Tables

### 1. `prod`
Stores product details.
- `prodid` (PK), `prod_na`, `category`, `prod_pr`, `stk`, `reord_lvl`

### 2. `supplier`
Stores supplier information.
- `suppid` (PK), `supp_na`, `addr`, `ph`

### 3. `Customer`
Stores customer details.
- `Custid` (PK), `Custna`, `addr`, `ph`

### 4. `PurcOrd`
Stores purchase orders.
- `purcid` (PK), `prodid` (FK), `suppid` (FK), `purcdt`, `qty`

### 5. `SaleOrd`
Stores sales orders.
- `saleid` (PK), `prodid` (FK), `custid` (FK), `saledt`, `pr`, `saleqty`

### 6. `Inventory`
Tracks stock updates by product and date.
- `invid` (PK), `prodid` (FK), `stkdt`, `stkqty`

### 7. `SupplierProd`
Maps products to suppliers (many-to-many).
- Composite PK: `Suppid`, `Prodid`

---

## 🔁 Triggers

- An `AFTER INSERT` trigger automatically adds new stock entries to the `Inventory` table whenever:
  - A **new purchase order** increases stock
  - A **new sales order** decreases stock

---

## 📁 Included Files

| File Name             | Description |
|-----------------------|-------------|
| `Tables.sql`          | SQL scripts to create all tables |
| `InsertQueries.sql`   | Scripts to insert sample data |
| `Trigger.sql`         | Triggers to auto-update inventory |
| `SampleReports.sql`   | Sample reports using SELECT queries |
| `README.md`           | Project overview and structure |

---

## 🧾 Sample Reports (in `SampleReports.sql`)

- Products below reorder level
- Monthly stock movements
- Top-selling products
- Supplier-wise purchase summaries

---

## 🛠 Tools Used

- SQL Server Management Studio (SSMS)
- GitHub for version control and documentation

---

## 📌 Usage

1. Run `Tables.sql` to create the schema.
2. Run `InsertQueries.sql` to populate sample data.
3. Run `Trigger.sql` to create triggers.
4. Execute `SampleReports.sql` to view useful reports.

---

## 👩‍💻 Author

Kavitha — Passionate about SQL development and database design.  
[Connect with me on LinkedIn or mailto vrkavitha12@gmail.com](#)

---


