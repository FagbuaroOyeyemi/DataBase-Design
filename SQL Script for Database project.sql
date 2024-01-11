/*
Project: BUILD A BUSINESS DATABASE

The objective :
Design a database which will capture information about a client's orders, products, categories, customers, suppliers,
 and employees
 */
 /* Dropping Database if it exists */
 DROP DATABASE IF EXISTS db_northwind;
 /* Creating Database using character encoding of utf-8 */
 CREATE DATABASE db_northwind DEFAULT CHARACTER SET utf8mb4 ;

  /*To make the database the active database */
  SHOW DATABASES ;
 
 -- To Create Orders Table
 CREATE TABLE orders(
	orderID INT PRIMARY KEY,
    customerID CHAR(5),
    employeeID INT,
    orderDate DATE,
    requiredDate DATE,
    shippedDate DATE,
    freight DOUBLE,
    productID INT,
    unitprice DOUBLE,
    quantity INT,
    discount DOUBLE
);

/*To Create customers Table */
CREATE TABLE customers (
	customerID CHAR(5) PRIMARY KEY,
    companyName VARCHAR(255),
    contactName VARCHAR(255),
    contactTitle VARCHAR(255)
);

/*To create enployees Table */
CREATE TABLE employees (
	employeeID INT PRIMARY KEY,
    employee_firstName VARCHAR(255),
    employee_lastName VARCHAR(255),
    city VARCHAR(255),
    country VARCHAR(255)
);

/*To create categories Table */
CREATE TABLE categories (
	categoryID INT PRIMARY KEY,
    categoryName VARCHAR(255)
);

/*To create products Table */
CREATE TABLE products (
	productID INT PRIMARY KEY,
    productName VARCHAR(255),
    categoryID INT,
    supplierID INT,
    quantityPerUnit VARCHAR(255),
    discontinue INT
);

/*To create suppliers Table */
CREATE TABLE suppliers (
	supplierID INT PRIMARY KEY,
    companyName VARCHAR(255),
    contactName VARCHAR(255),
    contactTitle VARCHAR(255)
);