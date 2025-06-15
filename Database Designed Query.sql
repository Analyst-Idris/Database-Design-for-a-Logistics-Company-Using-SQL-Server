-- ================================================
-- Create a new database for the Logistic Management System
-- ================================================
CREATE DATABASE LogisticsDB;

-- =========================================================
-- Create a table to store users (both buyers and sellers)
-- =========================================================
CREATE TABLE Users (
    UserID INT PRIMARY KEY, -- Unique identifier for each user
    Name VARCHAR(100), -- Full name of the user
    Email VARCHAR(100) UNIQUE, -- User's email address (must be unique)
    PasswordHash VARCHAR(255), -- Hashed password for authentication
    Address TEXT, -- User's physical or mailing address
    Role VARCHAR(255) -- Role of the user (e.g., 'buyer' or 'seller')
);

-- =============================================
-- Create a table to store product categories
-- =============================================
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY, -- Unique identifier for each category
    CategoryName VARCHAR(100) -- Name of the category (e.g., Electronics)
);

-- ===============================================
-- Create a table to store product information
-- ===============================================
CREATE TABLE Products (
    ProductID INT PRIMARY KEY, -- Unique identifier for each product
    ProductName VARCHAR(100), -- Name of the product
    Description TEXT, -- Description of the product
    Price DECIMAL(10, 2), -- Price of the product
    StockQuantity INT, -- Quantity available in stock
    SellerID INT, -- Reference to the seller (from Users table)
    CategoryID INT, -- Reference to the category (from Categories table)
    FOREIGN KEY (SellerID) REFERENCES Users(UserID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- ======================================================
-- Create a table to store customer order information
-- ======================================================
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY, -- Unique identifier for each order
    UserID INT, -- Reference to the user who placed the order
    OrderDate DATETIME, -- Date and time when the order was placed
    TotalAmount DECIMAL(10, 2), -- Total amount of the order
    PaymentStatus VARCHAR(15), -- Status of payment (e.g., 'Pending', 'Completed')
    DeliveryStatus VARCHAR(15), -- Status of delivery (e.g., 'Shipped', 'Delivered')
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- =======================================================
-- Create a table for detailed information about orders
-- =======================================================
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY, -- Unique identifier for each order item
    OrderID INT, -- Reference to the order
    ProductID INT, -- Reference to the product
    Quantity INT, -- Number of units ordered
    Price DECIMAL(10, 2), -- Price of the product at the time of order
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- ===============================================
-- Create a table to store payment transactions
-- ===============================================
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY, -- Unique identifier for each payment
    OrderID INT, -- Reference to the order being paid for
    PaymentDate DATETIME, -- Date and time of payment
    Amount DECIMAL(10, 2), -- Payment amount
    PaymentMethod VARCHAR(50), -- Payment method (e.g., 'Card', 'Transfer')
    PaymentStatus VARCHAR(15), -- Status of the payment
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- =====================================================
-- Create a table to track shipping and delivery info
-- =====================================================
CREATE TABLE Shipments (
    ShipmentID INT PRIMARY KEY, -- Unique identifier for each shipment
    OrderID INT, -- Reference to the order being shipped
    ShipmentDate DATETIME, -- Date the order was shipped
    DeliveryDate DATETIME, -- Date the order was delivered
    ShipmentStatus VARCHAR(15), -- Status of the shipment (e.g., 'In Transit')
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- ================================================
-- Create a table to store customer product reviews
-- ================================================
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY, -- Unique identifier for each review
    ProductID INT, -- Reference to the product being reviewed
    UserID INT, -- Reference to the user who wrote the review
    Rating INT CHECK (Rating BETWEEN 1 AND 5), -- Rating between 1 and 5
    Comments TEXT, -- Customer comments or feedback
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

