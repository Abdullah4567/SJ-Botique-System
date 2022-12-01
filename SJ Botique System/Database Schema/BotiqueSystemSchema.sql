go 
Use master
go
DROP DATABASE IF EXISTS BoutiqueSystem
go
create Database BoutiqueSystem
go
use BoutiqueSystem
go

-- DBCC CHECKIDENT('Table Name', RESEED, starting value)  -- command to reseed Auto increment key in

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
select * from Card_Category



------ DATA INSERTION --------

INSERT INTO Card_Category values ('Silver', 2.5)
INSERT INTO Card_Category values ('Gold', 5)
INSERT INTO Card_Category values ('Platinum', 10)

INSERT INTO [Role] values ('Customer', 'A person visiting online or POS store')
INSERT INTO [Role] values ('Sales Agent', 'A company employee working at an outlet')
INSERT INTO [Role] values ('Floor Manager', 'A company employee in charge of an outlet floor')
INSERT INTO [Role] values ('Inventory Manager', 'A company employee managing inventory and policies')
INSERT INTO [Role] values ('Store Manager', 'A company employee monitoring duties of an outlet')
INSERT INTO [Role] values ('Store Admin', 'A company head in charge of all outlets, employees and customers')

INSERT INTO Permission values ('Order', 'Place/cancel order and buy/return products')
INSERT INTO Permission values ('Mark Attendance', 'Mark attendance at a particular date')
INSERT INTO Permission values ('Track Attendance', 'Track attendance of sales agents for an outlet')
INSERT INTO Permission values ('Manage WorkShift', 'Define or change workshifts of sales agents for an outlet')
INSERT INTO Permission values ('Manage SalesAgents', 'Manage and view sales agents for an outlet')
INSERT INTO Permission values ('Manage Inventory', 'Manage global inventory and allocate inventory for outlets')
INSERT INTO Permission values ('Inventory Policy', 'Define or change inventory policy')
INSERT INTO Permission values ('Discount Policy', 'Define or change discount policy')
INSERT INTO Permission values ('View Reports', 'Run monthly and annual reports of products')
INSERT INTO Permission values ('Manage User', 'Add/remove user and assign roles')
INSERT INTO Permission values ('Manage Outlets', 'Block or delete outlets')

INSERT INTO Role_Permission values (1, 1)
INSERT INTO Role_Permission values (2, 2)
INSERT INTO Role_Permission values (3, 2)
INSERT INTO Role_Permission values (3, 3)
INSERT INTO Role_Permission values (3, 4)
INSERT INTO Role_Permission values (3, 5)
INSERT INTO Role_Permission values (4, 6)
INSERT INTO Role_Permission values (4, 7)
INSERT INTO Role_Permission values (5, 8)
INSERT INTO Role_Permission values (5, 9)
INSERT INTO Role_Permission values (6, 10)
INSERT INTO Role_Permission values (6, 11)




------ LOGIN PROCEDURE ------

create procedure log_in
@email nvarchar(50),
@pass nvarchar(30),
@userid int output,
@roleid int output

As Begin
	
	set @userid = -1
	set @roleid = -1

	if EXISTS(Select * from [User] u where u.Email = @email and u.Password = @pass)
	Begin
		Select @userid = u.Id, @roleid = ur.Role_Id from [User] u 
		JOIN User_Role ur on u.Id = ur.Id
		where u.Email = @email and u.Password = @pass
	End
End

------ SIGNUP PROCEDURE ------

create procedure sign_up
@name nvarchar(30),
@address nvarchar(100),
@age int,
@email nvarchar(50),
@created datetime,
@contact nvarchar(30),
@pass nvarchar(20),
@return int output

As Begin

	if EXISTS(Select * from [User] u where u.Email = @email or u.Name = @name)
		set @return = -1
	else if @age <= 0 or @age >= 100
		set @return = 0
	else begin
		set @return = 1
		INSERT INTO [User] values(@name, @address, @age, @email, @created, @contact, @pass)

		declare @uid int
		Select @uid = u.Id from [User] u where u.Email = @email

		INSERT INTO User_Role values(@uid, 1, NULL, 0, 1)
	end
end


------ SAMPLE PROCEDURE EXECUTION ------

DECLARE @return1 int

EXEC	[dbo].[sign_up]
		@name = N'Haris',
		@address = N'house 2139',
		@age = 28,
		@email = N'haris28@gmail.com',
		@created = N'2021',
		@contact = N'032921021',
		@pass = N'harisrauf28',
		@return = @return1 OUTPUT

SELECT	@return1 as N'@return'

EXEC	[dbo].[sign_up]
		@name = N'Adam',
		@address = N'house#10',
		@age = 45,
		@email = N'adam78@yahoo.com',
		@created = N'2022',
		@contact = N'0325278829',
		@pass = N'adam_78',
		@return = @return1 OUTPUT

SELECT	@return1 as N'@return'

DECLARE	@userid1 int,
		@roleid1 int

EXEC	[dbo].[log_in]
		@email = N'adam78@yahoo.com',
		@pass = N'adam_78',
		@userid = @userid1 OUTPUT,
		@roleid = @roleid1 OUTPUT

SELECT	@userid1 as N'@userid',
		@roleid1 as N'@roleid'