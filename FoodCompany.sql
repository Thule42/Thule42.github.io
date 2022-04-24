CREATE DATABASE FoodCompany
GO

USE FoodCompany
GO

CREATE TABLE UserLogin(
	UserName nvarchar(20),
	UserPassword nvarchar(20),
	PRIMARY KEY(UserName)
)
GO

CREATE TABLE Employee(
	EmployeeID nvarchar(50),
	EmployeeName nvarchar(50),
	Gender varchar(5),
	Birthdate datetime,
	Phone nvarchar(50),
	Email nvarchar(50),
	EmployeeAdress nvarchar(50),
	CMNN nvarchar(50)
	PRIMARY KEY(EmployeeID)
)
GO

CREATE TABLE Product(
	ProductID nvarchar(50),
	ProductName nvarchar(50),
	Quantity int,
	Price decimal(18,0),
	PRIMARY KEY(ProductID)
)
GO

CREATE TABLE Agent(
	AgentID nvarchar(50),
	AgentName nvarchar(50),
	AgentAdress nvarchar(50),
	Phone nvarchar(50)
	PRIMARY KEY(AgentID)
)

CREATE TABLE Import(
	ImportID nvarchar(50),
	ProductID nvarchar(50) FOREIGN KEY REFERENCES Product(ProductID),
	ProductName nvarchar(50),
	ImportDate date,
	Quantity int,
	Price decimal(18,0),

	PRIMARY KEY(ImportID)
)
GO

CREATE TABLE Export(
	ExportID nvarchar(50),
	ProductID nvarchar(50) FOREIGN KEY REFERENCES Product(ProductID),
	ProductName nvarchar(50),
	AgentID nvarchar(50) FOREIGN KEY REFERENCES Agent(AgentID),
	ExportDate date,
	Quantity int,
	Price decimal(18,0),
	DeliveryStatus nvarchar(50),
	PaymentStatus nvarchar(50),
	PRIMARY KEY(ExportID)
)
GO

CREATE TABLE RevenueMonth(
	RevenueID int identity,
	Months int,
	Revenue decimal(18,0)
	PRIMARY KEY(RevenueID)
)
GO



INSERT INTO UserLogin VALUES('Thu', '123456')
INSERT INTO UserLogin VALUES('Thuan', '123456')
INSERT INTO UserLogin VALUES('Vy','123456')
SELECT * FROM UserLogin

INSERT INTO Employee VALUES(N'001',N'Đoàn Chính Thuần',N'Nam',N'09823144534',CAST(N'2001-1-30' AS Date), N'doanchinhthuan@gmail.com',N'22 CMT8 Q,Tân Bình TpHCM',454674289)
SELECT * FROM Employee