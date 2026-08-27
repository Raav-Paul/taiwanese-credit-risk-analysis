# SQL

This folder contains the SQL pipeline used to clean, transform, and analyze the
[UCI Taiwanese Credit Card Default dataset](https://archive.ics.uci.edu/dataset/350/default+of+credit+card+clients).

The scripts implement a structured workflow that moves from:

**Raw Data Intake > Data Staging > Data Standardization > Analytical Views**

--------------------------------------

# Scripts Used

[01_load.sql](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/73c0b982c83e1aa28855bde2a60ee618a99bfaa4/sql/01_load.sql)

[02_clean&standardize.sql](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/e05695b992d26c333682795b4d744d42cf303f22/sql/02_clean%26standardize.sql)

[03_profiling.sql](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/e05695b992d26c333682795b4d744d42cf303f22/sql/03_profiling.sql)

----------------------------------------

# Workflow Overview

##  Data Staging

A staging table is created from the raw dataset to allow transformations without modifying the original data.

### Steps

* Create a staging table from the raw dataset
* Remove duplicate header rows
* Rename encoded column names to meaningful labels

### Example Transformations

       Original Column   	Renamed Column
       ---------------      ---------------
       X1	                Given_credit
       X2	                Gender
       X3	                Education
       X4	                Marital_status
       X6-X11	            History of past payment
       Y	                Oct_default

--------------------------------------------

##  Data Standardization

Encoded numeric fields are converted into readable categorical values.

### Examples

* Gender codes → **Male / Female**
* Education levels → **Graduate / Undergrad / High School**
* Marital status standardized
* Default indicator converted to **Yes / No**

Monthly delay values are mapped to descriptive repayment states:

* Dormant
* Balance Cleared
* Minimum Due Cleared
* 1-9 Month Delay

------------------------------------------------

##  Data Profiling

Views are created to explore demographic and portfolio characteristics.

Examples include:

* Customer distribution by gender, education, and marital status
* Average age across segments
* Default vs non-default counts

These views help understand the composition of the credit portfolio.

-------------------------------------------------

##  Default Behavior Analysis

A view evaluates the relationship between **payment delay history and defaults**.

The analysis calculates:

* Total accounts within each payment-delay category
* Number of subsequent defaults
* Default percentage by delay category

This highlights the relationship between increasing payment delays and observed default risk.

------------------------------------------------

##  Credit Risk Staging

Risk staging framework segments the portfolio into three risk categories based on recent repayment behavior. 

      Stage	    Description
      -----     ------------
      Stage 1	Performing accounts
      Stage 2	Elevated risk accounts
      Stage 3	Non-performing accounts

These stages allow the portfolio to be monitored by **risk severity**.

-------------------------------------------------------

# Output

The SQL pipeline generates analytical views that can be used directly in **business intelligence tools such as Power BI**.

These views support:

* Portfolio risk monitoring
* Portfolio and demographic profiling
* Default distribution analysis
* Default behavior analysis
* Credit risk staging and portfolio segmentation
