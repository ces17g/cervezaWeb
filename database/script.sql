CREATE TABLE City(
    Name CHAR(30) PRIMARY KEY,
    Distance REAL,
    County CHAR(30));

CREATE TABLE Bar(
    Name CHAR(60) PRIMARY KEY,
    Price_Range CHAR(5),
    Address CHAR(128),
    Type CHAR(30),
    Year_Est INT,
    City CHAR(30),
    FOREIGN KEY (City) REFERENCES City(Name));

CREATE TABLE User(
    UserID CHAR(30) PRIMARY KEY,
    Name CHAR(255) NOT NULL);

CREATE TABLE Rating(
    PRIMARY KEY (UserID, Bar),
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (Bar) REFERENCES Bar(Name),
    UserID CHAR(30),
    Rate INT,
    Bar CHAR(60));