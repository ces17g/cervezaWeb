-- DELETE FROM User WHERE _______; --
-- DELETE FROM Rating WHERE _______; --
-- DELETE FROM Bar WHERE _______; --
-- DELETE FROM City WHERE _______; --
DELIMITER $$

CREATE PROCEDURE DeleteCity(entryCond char(30), Entry char(30))
BEGIN
    IF(entryCond = 'Name') THEN             DELETE FROM City WHERE entryCond = Entry;
    ELSEIF(entryCond = 'Distance') THEN     DELETE FROM City WHERE entryCond = CAST(Entry AS REAL);
    ELSEIF(entryCond = 'County') THEN       DELETE FROM City WHERE entryCond = Entry;
    END IF;
END $$
CREATE PROCEDURE DeleteBar(entryCond char(128), Entry char(128))
BEGIN
    IF(entryCond = 'Name') THEN             DELETE FROM Bar WHERE entryCond = Entry;
    ELSEIF(entryCond = 'Price_Range') THEN  DELETE FROM Bar WHERE entryCond = Entry;
    ELSEIF(entryCond = 'Address') THEN      DELETE FROM Bar WHERE entryCond = Entry;
    ELSEIF(entryCond = 'Type') THEN         DELETE FROM Bar WHERE entryCond = Entry;
    ELSEIF(entryCond = 'Year_Est') THEN     DELETE FROM Bar WHERE entryCond = CAST(Entry AS UNSIGNED);
    ELSEIF(entryCond = 'City') THEN         DELETE FROM Bar WHERE entryCond = Entry;
    END IF;
END $$
CREATE PROCEDURE DeleteUser(entryCond char(128), Entry char(128))
BEGIN
    IF(entryCond = 'UserID') THEN       DELETE FROM User WHERE entryCond = Entry;
    ELSEIF(entryCond = 'Name') THEN     DELETE FROM User WHERE entryCond = Entry;
    END IF;
END $$
CREATE PROCEDURE DeleteRating(entryCond char(128), Entry char(128))
BEGIN
    IF(entryCond = 'UserID') THEN       DELETE FROM Rating WHERE entryCond = Entry;
    ELSEIF(entryCond = 'Rate') THEN     DELETE FROM Rating WHERE entryCond = CAST(Entry AS UNSIGNED);
    ELSEIF(entryCond = 'Bar') THEN      DELETE FROM Rating WHERE entryCond = Entry;
    END IF;
END $$
DELIMITER ;
