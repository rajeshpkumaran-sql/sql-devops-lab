IF DB_ID('DevOpsLab') IS NULL
BEGIN
    CREATE DATABASE DevOpsLab;
END
GO

USE DevOpsLab;
GO

IF OBJECT_ID('dbo.Customers', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Customers (
        CustomerID INT PRIMARY KEY,
        Name NVARCHAR(100)
    );
END
GO

IF OBJECT_ID('dbo.Orders', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Orders (
        OrderID INT PRIMARY KEY,
        CustomerID INT,
        Amount DECIMAL(10,2)
    );
END
GO