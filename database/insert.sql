-- INSERT INTO User VALUES ('UserID', 'Name'); --
-- INSERT INTO Rating VALUES ('UserID', Rate, 'Bar'); --
-- INSERT INTO Bar VALUES ('Name', '$', 'Address', 'Type', 2019, 'City'); --
-- INSERT INTO City VALUES ('Name', miles, 'County'); --
DELIMITER $$

CREATE PROCEDURE InsertTo(setAttrib char(255), setChng1 char(255), setChng2 char(255),
                            setChng3 char(255), setChng4 char(255), setChng5 char(255), setChng6 char(255))
BEGIN
    IF(setAttrib = 'User') THEN         INSERT INTO User VALUES(setChng1, setChng2);
    ELSEIF(setAttrib = 'Rating') THEN   INSERT INTO Rating VALUES(setChng1, CAST(setChng2 AS UNSIGNED), setChng3);
    ELSEIF(setAttrib = 'Bar') THEN      INSERT INTO Bar VALUES(setChng1, setChng2, setChng3, setChng4, CAST(setChng5 AS UNSIGNED), setChng6);
    ELSEIF(setAttrib = 'City') THEN     INSERT INTO City VALUES(setChng1, CAST(setChng2 AS UNSIGNED), setChng3);
    END IF;
END $$
DELIMITER ;