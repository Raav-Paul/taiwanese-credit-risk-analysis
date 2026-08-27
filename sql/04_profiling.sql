-- Data Profiling
CREATE VIEW data_profiling AS
    SELECT 
        Gender,
        Education,
        Marital_status,
        Oct_default AS Default_Flag,
        COUNT(*) AS Total_Count,
        ROUND(AVG(Age), 1) AS Avg_Age
    FROM
        default_table_staging
    GROUP BY Gender , Education , Marital_status , Oct_default;

-- Count of defaults and non-defaults
CREATE VIEW defaults_and_nodefaults AS
    SELECT 
        Oct_default AS Defaulted, COUNT(*) AS Total_Count
    FROM
        default_table_staging
    GROUP BY Oct_default;



-- Risk Stages
CREATE OR REPLACE VIEW risk_stage AS
    SELECT 
        ID,
        Sept_delay,
        Oct_default,
        Given_credit,
        Sept_bill,
        CASE
            WHEN
                Sept_delay IN ('Balance Cleared' , 'Minimum Due Cleared', 'Dormant')
                    AND Oct_default = 'No'
            THEN
                'Stage 1 - Performing'
            WHEN Sept_delay IN ('1 Month Delay' , '2 Months Delay') THEN 'Stage 2 - Elevated Risk'
            WHEN
                Sept_delay IN ('Balance Cleared' , 'Minimum Due Cleared', 'Dormant')
                    AND Oct_default = 'Yes'
            THEN
                'Stage 2 - Elevated Risk'
            WHEN
                Sept_delay IN ( '3 Months Delay',
                    '4 Months Delay',
                    '5 Months Delay',
                    '6 Months Delay',
                    '7 Months Delay',
                    '8 Months Delay',
                    '9 Months Delay')
            THEN
                'Stage 3 - Non-Performing'
            ELSE 'Unclassified'
        END AS Risk_Stage
    FROM
        default_table_staging;
