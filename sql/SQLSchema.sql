USE Emp;
CREATE SCHEMA mySchema;

CREATE TABLE mySchema.Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50),
    Email VARCHAR(100),
    CreatedDate DATETIME
);
CREATE TABLE mySchema.Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    UserID INT REFERENCES mySchema.Users(UserID)
);
-- Inserting data into Users table within YourSchemaName schema
INSERT INTO mySchema.Users (UserID, UserName, Email, CreatedDate)
VALUES (1, 'John Doe', 'john@example.com', GETDATE()),
       (2, 'Jane Smith', 'jane@example.com', GETDATE());

-- Inserting data into Products table within YourSchemaName schema
INSERT INTO mySchema.Products (ProductID, ProductName, Price, UserID)
VALUES (1, 'Product A', 49.99, 1),
       (2, 'Product B', 29.99, 2);
SELECT * FROM mySchema.Users;
SELECT * FROM mySchema.Products;
