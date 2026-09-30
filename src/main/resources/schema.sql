-- Created by Redgate Data Modeler (https://datamodeler.redgate-platform.com)
-- Last modification date: 2026-08-26 11:34:58.783

-- tables
-- Table: Friend
CREATE TABLE Friend (
    ID integer NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY(Start with 1, Increment by 1),
    Name varchar(20)  NOT NULL,
    Surname varchar(20)  NOT NULL,
    Birth_date date  NOT NULL,
    Date_met date,
    Description varchar(50),
    Status_ID integer  NOT NULL,
    Gender_ID integer  NOT NULL
) ;

-- Table: Gender
CREATE TABLE Gender (
    ID integer  NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY(Start with 1, Increment by 1),
    Title varchar(30)  NOT NULL
) ;

-- Table: Status
CREATE TABLE Status (
    ID integer  NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY(Start with 1, Increment by 1),
    Title varchar(30)  NOT NULL
) ;

-- foreign keys
-- Reference: Friend_Gender (table: Friend)
ALTER TABLE Friend ADD CONSTRAINT Friend_Gender
    FOREIGN KEY (Gender_ID)
    REFERENCES Gender (ID);

-- Reference: Friend_Status (table: Friend)
ALTER TABLE Friend ADD CONSTRAINT Friend_Status
    FOREIGN KEY (Status_ID)
    REFERENCES Status (ID);

-- End of file.

