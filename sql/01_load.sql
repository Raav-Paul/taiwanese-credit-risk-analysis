-- Creating a staging table 
CREATE TABLE default_table_staging LIKE default_table;  

INSERT INTO default_table_staging 
SELECT *  FROM default_table;

-- Deleting the extra header row
DELETE FROM default_table_staging 
WHERE
    MyUnknownColumn = 'ID';
    
SELECT 
    *
FROM
    default_table_staging
WHERE
    MyUnknownColumn = 'ID';
