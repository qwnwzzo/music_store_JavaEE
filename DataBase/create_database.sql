/************************************************************
* Create the database named music, its tables, and a user
************************************************************/
  
DROP DATABASE IF EXISTS music;
  
CREATE DATABASE music;
  
USE music;
  
CREATE TABLE User (
    UserID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    CompanyName VARCHAR(50),
    Address1 VARCHAR(50),
    Address2 VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip VARCHAR(50),
    Country VARCHAR(50),
    CreditCardType VARCHAR(50),
    CreditCardNumber VARCHAR(50),
    CreditCardExpirationDate VARCHAR(50),
  
    PRIMARY KEY (UserID)
);
  
CREATE TABLE Invoice(
    InvoiceID INT NOT NULL AUTO_INCREMENT,
    UserID INT NOT NULL,
    InvoiceDate DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    TotalAmount FLOAT NOT NULL DEFAULT '0',
    IsProcessed enum('y','n') DEFAULT NULL,
  
    PRIMARY KEY (InvoiceID),
    FOREIGN KEY (UserID) REFERENCES User (UserID)
);
  
CREATE TABLE LineItem(
    LineItemID INT NOT NULL AUTO_INCREMENT,
    InvoiceID INT NOT NULL DEFAULT '0',
    ProductID INT NOT NULL DEFAULT '0',
    Quantity INT NOT NULL DEFAULT '0',
  
    PRIMARY KEY (LineItemID),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice (InvoiceID)
);
  
CREATE TABLE Product(
    ProductID INT NOT NULL AUTO_INCREMENT,
    ProductCode VARCHAR(10) NOT NULL DEFAULT '',
    ProductDescription VARCHAR(100) NOT NULL DEFAULT '',
    ProductPrice DECIMAL(7,2) NOT NULL DEFAULT '0.00',
  
    PRIMARY KEY (ProductID)
);
  
INSERT INTO Product VALUES 
  ('1', '8601', '86 (the band) - True Life Songs and Pictures', '14.95'),
  ('2', 'pf01', 'Paddlefoot - The first CD', '12.95'),
  ('3', 'pf02', 'Paddlefoot - The second CD', '14.95'),
  ('4', 'jr01', 'Joe Rut - Genuine Wood Grained Finish', '14.95');
  
CREATE TABLE Download (
    DownloadID INT NOT NULL AUTO_INCREMENT,
    UserID INT NOT NULL,
    DownloadDate DATETIME NOT NULL,
    ProductCode VARCHAR(10)  NOT NULL,
  
    PRIMARY KEY (DownloadID), 
    FOREIGN KEY (UserID) REFERENCES User (UserID)
);


DROP DATABASE IF EXISTS stephen;

CREATE DATABASE stephen;

USE stephen;

CREATE TABLE UserPass (
    Username varchar(15) NOT NULL PRIMARY KEY,
	Password varchar(15) NOT NULL
);

INSERT INTO UserPass VALUES ('andrea', 'stephen'),
                             ('joel', 'stephen'),
							  ('anne', 'stephen');

CREATE TABLE UserRole (
    Username varchar(15) NOT NULL,
	Rolename varchar(15) NOT NULL,
	PRIMARY KEY (Username, Rolename)
);

INSERT INTO UserRole VALUES('andrea', 'service'),
                           ('andrea', 'programmer'),
						   ('joel', 'programmer');


