-- Renaming columns
ALTER TABLE default_table_staging
  CHANGE MyUnknownColumn ID INT,
  CHANGE X1 Given_credit INT,
  CHANGE X2 Gender VARCHAR(10),
  CHANGE X3 Education VARCHAR(20),
  CHANGE X4 Marital_status VARCHAR(20),
  CHANGE X5 Age INT,
  CHANGE X6 Sept_delay VARCHAR(50),
  CHANGE X7 August_delay VARCHAR(50),
  CHANGE X8 July_delay VARCHAR(50),
  CHANGE X9 June_delay VARCHAR(50),
  CHANGE X10 May_delay VARCHAR(50),
  CHANGE X11 April_delay VARCHAR(50),
  CHANGE X12 Sept_bill INT,
  CHANGE X13 August_bill INT,
  CHANGE X14 July_bill INT,
  CHANGE X15 June_bill INT,
  CHANGE X16 May_bill INT,
  CHANGE X17 April_bill INT,
  CHANGE X18 Sept_payment INT,
  CHANGE X19 August_payment INT,
  CHANGE X20 July_payment INT,
  CHANGE X21 June_payment INT,
  CHANGE X22 May_payment INT,
  CHANGE X23 April_payment INT,
  CHANGE Y Oct_default VARCHAR(20);
  
  -- Gender Update
UPDATE default_table_staging 
SET 
    Gender = CASE
        WHEN Gender = 1 THEN 'Male'
        WHEN Gender = 2 THEN 'Female'
        ELSE 'Unknown'
    END;
SELECT 
    *
FROM
    default_table_staging;

-- Education Update  
UPDATE default_table_staging 
SET 
    Education = CASE
        WHEN Education = 1 THEN 'Graduate'
        WHEN Education = 2 THEN 'Undergrad'
        WHEN Education = 3 THEN 'High School'
        WHEN Education = 4 THEN 'Others'
        ELSE 'Unknown'
    END;

-- Auditing age and education
SELECT 
    age, education, COUNT(age)
FROM
    default_table_staging
WHERE
    Education = 'Graduate' AND Age IN (22)
GROUP BY age , education;
-- AUDIT NOTE:
-- Found 120 entries labeled 'Graduate' at age 22.
-- This is statistically very unlikely given the typical graduation timeline.
-- Possible causes: misreporting, recording errors, or loose classification by banks/consumers.
-- These entries are not removed or flagged and are included as such, as it is believed that it won't affect the overall analysis.
  
UPDATE default_table_staging 
SET 
    Marital_status = CASE
        WHEN Marital_status = 1 THEN 'Married'
        WHEN Marital_status = 2 THEN 'Single'
        WHEN Marital_status = 3 THEN 'Unknown'
        ELSE 'Unknown'
    END;
SELECT 
    *
FROM
    default_table_staging;

-- Delays Update
-- September Delay
UPDATE default_table_staging 
SET 
    Sept_delay = CASE
        WHEN Sept_delay = - 2 THEN 'Dormant'
        WHEN Sept_delay = - 1 THEN 'Balance Cleared'
        WHEN Sept_delay = 0 THEN 'Minimum Due Cleared'
        WHEN Sept_delay = 1 THEN '1 Month Delay'
        WHEN Sept_delay = 2 THEN '2 Months Delay'
        WHEN Sept_delay = 3 THEN '3 Months Delay'
        WHEN Sept_delay = 4 THEN '4 Months Delay'
        WHEN Sept_delay = 5 THEN '5 Months Delay'
        WHEN Sept_delay = 6 THEN '6 Months Delay'
        WHEN Sept_delay = 7 THEN '7 Months Delay'
        WHEN Sept_delay = 8 THEN '8 Months Delay'
        WHEN Sept_delay = 9 THEN '9 Months Delay'
        ELSE 'Unknown'
    END;

SELECT 
    *
FROM
    default_table_staging;

-- August Delay
UPDATE default_table_staging 
SET 
    August_delay = CASE
        WHEN August_delay = - 2 THEN 'Dormant'
        WHEN August_delay = - 1 THEN 'Balance Cleared'
        WHEN August_delay = 0 THEN 'Minimum Due Cleared'
        WHEN August_delay = 1 THEN '1 Month Delay'
        WHEN August_delay = 2 THEN '2 Months Delay'
        WHEN August_delay = 3 THEN '3 Months Delay'
        WHEN August_delay = 4 THEN '4 Months Delay'
        WHEN August_delay = 5 THEN '5 Months Delay'
        WHEN August_delay = 6 THEN '6 Months Delay'
        WHEN August_delay = 7 THEN '7 Months Delay'
        WHEN August_delay = 8 THEN '8 Months Delay'
        WHEN August_delay = 9 THEN '9 Months Delay'
        ELSE 'Unknown'
    END;

-- July Delay
UPDATE default_table_staging 
SET 
    July_delay = CASE
        WHEN July_delay = - 2 THEN 'Dormant'
        WHEN July_delay = - 1 THEN 'Balance Cleared'
        WHEN July_delay = 0 THEN 'Minimum Due Cleared'
        WHEN July_delay = 1 THEN '1 Month Delay'
        WHEN July_delay = 2 THEN '2 Months Delay'
        WHEN July_delay = 3 THEN '3 Months Delay'
        WHEN July_delay = 4 THEN '4 Months Delay'
        WHEN July_delay = 5 THEN '5 Months Delay'
        WHEN July_delay = 6 THEN '6 Months Delay'
        WHEN July_delay = 7 THEN '7 Months Delay'
        WHEN July_delay = 8 THEN '8 Months Delay'
        WHEN July_delay = 9 THEN '9 Months Delay'
        ELSE 'Unknown'
    END;

-- June Delay
UPDATE default_table_staging 
SET 
    June_delay = CASE
        WHEN June_delay = - 2 THEN 'Dormant'
        WHEN June_delay = - 1 THEN 'Balance Cleared'
        WHEN June_delay = 0 THEN 'Minimum Due Cleared'
        WHEN June_delay = 1 THEN '1 Month Delay'
        WHEN June_delay = 2 THEN '2 Months Delay'
        WHEN June_delay = 3 THEN '3 Months Delay'
        WHEN June_delay = 4 THEN '4 Months Delay'
        WHEN June_delay = 5 THEN '5 Months Delay'
        WHEN June_delay = 6 THEN '6 Months Delay'
        WHEN June_delay = 7 THEN '7 Months Delay'
        WHEN June_delay = 8 THEN '8 Months Delay'
        WHEN June_delay = 9 THEN '9 Months Delay'
        ELSE 'Unknown'
    END;

-- May Delay
UPDATE default_table_staging 
SET 
    May_delay = CASE
        WHEN May_delay = - 2 THEN 'Dormant'
        WHEN May_delay = - 1 THEN 'Balance Cleared'
        WHEN May_delay = 0 THEN 'Minimum Due Cleared'
        WHEN May_delay = 1 THEN '1 Month Delay'
        WHEN May_delay = 2 THEN '2 Months Delay'
        WHEN May_delay = 3 THEN '3 Months Delay'
        WHEN May_delay = 4 THEN '4 Months Delay'
        WHEN May_delay = 5 THEN '5 Months Delay'
        WHEN May_delay = 6 THEN '6 Months Delay'
        WHEN May_delay = 7 THEN '7 Months Delay'
        WHEN May_delay = 8 THEN '8 Months Delay'
        WHEN May_delay = 9 THEN '9 Months Delay'
        ELSE 'Unknown'
    END;

-- April Delay
UPDATE default_table_staging 
SET 
    April_delay = CASE
        WHEN April_delay = - 2 THEN 'Dormant'
        WHEN April_delay = - 1 THEN 'Balance Cleared'
        WHEN April_delay = 0 THEN 'Minimum Due Cleared'
        WHEN April_delay = 1 THEN '1 Month Delay'
        WHEN April_delay = 2 THEN '2 Months Delay'
        WHEN April_delay = 3 THEN '3 Months Delay'
        WHEN April_delay = 4 THEN '4 Months Delay'
        WHEN April_delay = 5 THEN '5 Months Delay'
        WHEN April_delay = 6 THEN '6 Months Delay'
        WHEN April_delay = 7 THEN '7 Months Delay'
        WHEN April_delay = 8 THEN '8 Months Delay'
        WHEN April_delay = 9 THEN '9 Months Delay'
        ELSE 'Unknown'
    END;

-- October Default
UPDATE default_table_staging 
SET 
    Oct_default = CASE
        WHEN Oct_default = 0 THEN 'No'
        WHEN Oct_default = 1 THEN 'Yes'
        ELSE 'Unknown'
    END;