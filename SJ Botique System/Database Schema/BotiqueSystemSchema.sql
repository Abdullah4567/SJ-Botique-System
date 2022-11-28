go 
Use master
go
DROP DATABASE IF EXISTS BoutiqueSystem
go
create Database BoutiqueSystem
go
use BoutiqueSystem
go

create table [User]
(Id int Identity(1,1) primary key,
[Name] nvarchar(30) NOT NULL,
[Address] nvarchar(100) NOT NULL,
Age int NOT NULL check (Age>0 and Age <100),
Email nvarchar(50) NOT NULL,
CreatedAt datetime NOT NULL,
Contact nvarchar(30) NOT NULL,
[Password] varchar(20) NOT NULL
)

go
create table [Role]
(Id int Identity(1,1) primary key,
[Name] nvarchar(30)  NOT NULL,
[Description] nvarchar(100)  NOT NULL
)

go
create table Permission
(Id int Identity(1,1) primary key,
[Name] nvarchar(30)  NOT NULL,
[Description] nvarchar(100)  NOT NULL
)

go
create table Role_Permission
(Id int Identity(1,1) primary key,
Role_Id int FOREIGN KEY REFERENCES [Role](Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
Permission_Id int FOREIGN KEY REFERENCES Permission(Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL
)

go
create table WorkShift
(Id int Identity(1,1) primary key,
[Name] nvarchar(30) NOT NULL,
Time_in time  NOT NULL,
Time_out time  NOT NULL
)


go
create table Card_Category
(Id int Identity(1,1) primary key,
[Name] nvarchar(30)CHECK ([name]='Gold' OR [name]='Silver' OR[name]='Platinum') NOT NULL,
[Value] float NOT Null CHECK ([value]>0 and [value] <=10)
)


go
create table User_Role
(Id int Identity(1,1) primary key,
U_ID int FOREIGN KEY REFERENCES [User](Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
Role_Id int FOREIGN KEY REFERENCES [Role](Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
Workshift_Id int FOREIGN KEY REFERENCES WorkShift(ID) ON DELETE CASCADE ON UPDATE CASCADE,
Loyalty_pts int DEFAULT 0,
Card_cateogry_Id int  FOREIGN KEY REFERENCES Card_Category (Id) ON DELETE CASCADE ON UPDATE CASCADE
)


go
create table Attendance
(Id int Identity(1,1) primary key,
SalesAgent_Id int FOREIGN KEY REFERENCES [User](Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
[Date] date  default GetDate() NOT NULL,
Time_in nvarchar(30) NOT NULL,
Time_out nvarchar(30) NOT NULL
)

go
create table Product
(Id int Identity(1,1) primary key,
[Name] nvarchar(30) NOT NULL,
Price float NOT NULL,
Quantity int NOT NULL CHECK(quantity >0 and quantity < 1000)
)

go
create table [Order]
(Id int Identity(1,1) primary key,
Customer_Id int FOREIGN KEY REFERENCES User_Role(Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
SalesAgent_Id int FOREIGN KEY REFERENCES User_Role(Id) NOT NULL,
[Date] date default GetDate() NOT NULL, -- for Sales Agent Report Generation
Payment_Type nvarchar(20) NOT NULL CHECK (Payment_Type='Credit Card' OR Payment_Type='Cash'),
Status_ nvarchar(30) NOT NULL CHECK (Status_='Pending' OR Status_='Cleared'),
Card_no varchar(10)
)

go
create table Order_Detail
(Id int Identity(1,1) primary key,
Order_Id int FOREIGN KEY REFERENCES [Order](Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
Product_Id int FOREIGN KEY REFERENCES Product(Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL
)

go
create table Outlet
(Id int Identity(1,1) primary key,
[Name] nvarchar(30) NOT NULL,
[Location] nvarchar(100),
Outlet_Type nvarchar(20) NOT NULL CHECK (Outlet_Type='POS' OR Outlet_Type='Online'),
[Status] nvarchar(30) NOT NULL CHECK ([status]='Blocked' OR [status]='Active')
)

go
create table Outlet_Inventory
(Id int Identity(1,1) primary key,
Order_Id int FOREIGN KEY REFERENCES [order](Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
Product_Id int FOREIGN KEY REFERENCES product(Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
Inventory_Count int not null default 0
)

go
create table PurchaseLines
(Id int Identity(1,1) primary key,
Supplier_Id int FOREIGN KEY REFERENCES [User](ID) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
[Date] date default GetDate() NOT NULL
)

go
create table Purchase_Detail
(Id int Identity(1,1) primary key,
Purchase_Id int FOREIGN KEY REFERENCES PurchaseLines(Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
Product_Id int FOREIGN KEY REFERENCES Product(Id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
Price float NOT NULL,
Quantity int NOT NULL
)

go
create table [Policy]
(Id int Identity(1,1) primary key,
Policy_Type nvarchar(30) NOT NULL CHECK (Policy_Type='Inventory' OR Policy_Type='Discount'),
[Description] nvarchar(100) NOT NULL
)



select * from [User]
select * from [Role]
select * from Permission
select * from Role_Permission
select * from WorkShift
select * from User_Role
select * from Attendance
select * from Product
select * from [Order]
select * from Order_Detail
select * from Outlet
select * from Outlet_Inventory
select * from PurchaseLines
select * from Purchase_Detail
select * from [Policy]


