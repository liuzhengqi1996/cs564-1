DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Seller;
DROP TABLE IF EXISTS Bidder;
DROP TABLE IF EXISTS Bid;

CREATE TABLE Item(
    ItemID int NOT NULL,
    Ends time NOT NULL, 
    Currently float NOT NULL,
    Name TEXT NOT NULL,
    Started time NOT NULL,
    Country TEXT,
    Number_of_Bids int NOT NULL,
    First_Bid float NOT NULL,
    UserID TEXT NOT NULL,
    Location TEXT,        
    Buy_Price TEXT,
    Description TEXT NOT NULL,
    PRIMARY KEY (ItemID),
    FOREIGN KEY (UserID) REFERENCES Bidder(UserID)
);

CREATE TABLE Category(
    ItemID int NOT NULL,
    Category TEXT NOT NULL,
    PRIMARY KEY (ItemID, Category)
    FOREIGN KEY (ItemID) REFERENCES Item(ItemID)
);

CREATE TABLE Seller(
    Rating int NOT NULL,
    UserID TEXT NOT NULL,
    Location TEXT,
    Country TEXT,
    PRIMARY KEY(UserID)    
);

CREATE TABLE Bidder(
    Rating int NOT NULL,
    UserID TEXT NOT NULL,
    Location TEXT,
    Country TEXT,
    PRIMARY KEY(UserID)
);

CREATE TABLE Bid(
    ItemID int NOT NULL,
    Amount float NOT NULL,
    UserID TEXT NOT NULL,
    Time time NOT NULL,
    FOREIGN KEY (ItemID) REFERENCES item(ItemID),
    FOREIGN KEY (UserID) REFERENCES Bidder(UserID)
);
