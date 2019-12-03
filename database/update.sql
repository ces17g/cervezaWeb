-- UPDATE User SET _____ WHERE _______; --
-- UPDATE Rating SET _____ WHERE _______; --
-- UPDATE Bar SET _____ WHERE _______; --
-- UPDATE City SET _____ WHERE _______; --
DELIMITER $$

CREATE FUNCTION UpdateCity(setAttrib char(10), setChange char(30), entryCon char(30), Entry char(30)) RETURNS
BEGIN
    IF(setAttrib = 'Name') THEN             UPDATE City SET Name = setChange WHERE entryCon = Entry;
    ELSEIF(setAttrib = 'Distance') THEN     UPDATE City SET Distance = CAST(setChange AS REAL) WHERE entryCon = Entry;
    ELSEIF(setAttrib = 'County') THEN       UPDATE City SET County = setChange WHERE entryCon = Entry;
    END IF;
END $$
CREATE PROCEDURE UpdateBar(setAttrib char(10), setChange char(128), entryCon char(128), Entry char(128))
BEGIN
    IF(setAttrib = 'Name') THEN             UPDATE Bar SET Name = setChange WHERE entryCon = Entry;
    ELSEIF(setAttrib = 'Price_Range') THEN  UPDATE Bar SET Price_Range = setChange WHERE entryCon = Entry;
    ELSEIF(setAttrib = 'Address') THEN      UPDATE Bar SET Address = setChange WHERE entryCon = Entry;
    ELSEIF(setAttrib = 'Type') THEN         UPDATE Bar SET Type = setChange WHERE entryCon = Entry;
    ELSEIF(setAttrib = 'Year_Est') THEN     UPDATE Bar SET Year_Est = CAST(setChange AS UNSIGNED) WHERE entryCon = Entry;
    ELSEIF(setAttrib = 'City') THEN         UPDATE Bar SET City = setChange WHERE entryCon = Entry;
    END IF;
END $$
CREATE PROCEDURE UpdateUser(setAttrib char(10), setChange char(128), entryCon char(128), Entry char(128))
BEGIN
    IF(setAttrib = 'UserID') THEN       UPDATE User SET UserID = setChange WHERE entryCon = Entry;
    ELSEIF(setAttrib = 'Name') THEN     UPDATE User SET Name = setChange WHERE entryCon = Entry;
    END IF;
END $$
CREATE PROCEDURE UpdateRating(setAttrib char(10), setChange char(128), entryCon char(128), Entry char(128))
BEGIN
    IF(setAttrib = 'UserID') THEN       UPDATE Rating SET UserID = setChange WHERE entryCon = Entry;
    ELSEIF(setAttrib = 'Rate') THEN     UPDATE Rating SET Rate = setChange WHERE entryCon = Entry;
    ELSEIF(setAttrib = 'Bar') THEN      UPDATE Rating SET Bar = setChange WHERE entryCon = Entry;
    END IF;
END $$
DELIMITER ;