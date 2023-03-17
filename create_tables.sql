CREATE DATABASE DB_Assignment;

CREATE TABLE DB_Assignment.Users (
    `UserID` INT AUTO_INCREMENT,
    `FirstName` VARCHAR(100) NOT NULL,
    `LastName` VARCHAR(100) NOT NULL,
    `Gender` VARCHAR(20) NOT NULL,
    `Address` VARCHAR(400) NOT NULL,
    `MobileNumber` NUMERIC NOT NULL UNIQUE,
    `Email` VARCHAR(100) NOT NULL UNIQUE,
    `Country` VARCHAR(50) NOT NULL,
    `State` VARCHAR(50) NOT NULL,
    `City` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`UserID`)
);

CREATE TABLE DB_Assignment.Products (
    `ProductID` INT AUTO_INCREMENT PRIMARY KEY,
    `ProductName` VARCHAR(100) NOT NULL,
    `ProductDescription` VARCHAR(400) NOT NULL,
    `ProductCategories` VARCHAR(50) NOT NULL,
    `ProductImageURL` VARCHAR(400) NOT NULL,
    `PoductWeightInKG` FLOAT(10) NOT NULL,
    `ProductStock` INT NOT NULL,
    `ProductPrice` INT NOT NULL
);

CREATE TABLE DB_Assignment.Orders (
    `OrderID` INT AUTO_INCREMENT,
    `UserID` INT NOT NULL,
    `OrderDate` DATE NOT NULL,
    `OrderStatus` VARCHAR(20) NOT NULL,
    `OrderExpectedDeliveryDate` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`OrderID`),
    FOREIGN KEY (`UserID`)
        REFERENCES Users(`UserID`)
);

CREATE TABLE DB_Assignment.Order_details (
    `OrderID` INT NOT NULL,
    `ProductID` INT NOT NULL,
    `ProductQuantity` INT NOT NULL,
    FOREIGN KEY (`OrderID`)
        REFERENCES Orders (`OrderID`),
    FOREIGN KEY (`ProductID`)
        REFERENCES Products (`ProductID`)
);