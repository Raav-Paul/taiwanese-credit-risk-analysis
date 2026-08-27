# Taiwanese Credit Risk Analysis 

## Overview

This project analyzes credit card default risk using the [UCI Taiwanese Credit Card Default Dataset](https://archive.ics.uci.edu/dataset/350/default+of+credit+card+clients).  

The objective is to build an interpretable credit risk monitoring framework that converts repayment behavior into actionable risk segments for early default detection and loss mitigation.  

The workflow follows a structured pipeline that moves from: raw data > staging > cleaning > standardization > analytical views > BI dashboards

### Historical Context: Taiwan's 2005 Double-Card Crisis

This dataset captures credit card behavior during Taiwan's 2005 card debt crisis, when more than 400,000 cardholders became unable to repay their debts amid aggressive lending practices and weak regulatory oversight. Banks over-issued cards to unqualified applicants, including students without jobs, while cardholders over-extended themselves under 17-20% interest rates. 


--------------------------------------------------

## Tools Used

- MySQL:

[01_load.sql](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/73c0b982c83e1aa28855bde2a60ee618a99bfaa4/sql/01_load.sql)

[02_clean&standardize.sql](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/e05695b992d26c333682795b4d744d42cf303f22/sql/02_clean%26standardize.sql)

[03_profiling.sql](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/e05695b992d26c333682795b4d744d42cf303f22/sql/03_profiling.sql)
  
- Power BI:

[Taiwanese Defaults.pbix](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/1ab261db761114fa2021b1e1b19f791ad03c682d/dashboard/Taiwanese%20Defaults.pbix)

--------------------------------------------------

## Dataset

- Source: [Taiwanese Credit Card Default Dataset](https://archive.ics.uci.edu/dataset/350/default+of+credit+card+clients).
- Records: 30,000 customers
- Geographic Context: Taiwan, Mid-2005 financial environment
- Features include:
  - Credit limit
  - Demographics (age, gender, education, marital status)
  - Monthly payment delays
  - Monthly bill statements
  - Monthly payments
  - Default status

The dataset tracks customer payment behavior over 6 months to analyze **default risk patterns**.

--------------------------------------------------

## Project Workflow

###  Data Staging

A staging table is created from the raw dataset to allow safe transformation and cleaning.

Key steps:

* Copy raw data into a staging table
* Remove duplicate header rows
* Standardize column names for readability

Examples of transformations are as follows:

    Original   Transformed
    ---------  -------------
    X1          Given_credit
    X2          Gender
    X3          Education
    X6-X11      History of past payment
    Y           Oct_default

---------------------------------------------------

###  Data Standardization

Several variables were converted into readable categorical values.

Examples:

    Field              Original Values      Converted Values                            
    ------             ----------------     ------------------
    Gender              1 / 2                Male / Female                               
    Education           1 / 2 / 3 / 4        Graduate / Undergrad / High School / Others 
    Marital Status      1 / 2 / 3            Married / Single / Unknown                  
    Default             0 / 1                No / Yes                                    

Monthly delay indicators were also mapped into interpretable repayment behavior:

* Dormant
* Balance Cleared
* Minimum Due Cleared
* 1-9 Month Delay

--------------------------------------------------

##  Data Profiling

Views are created to explore demographic and portfolio characteristics.

Examples include:

* Customer distribution by gender, education, and marital status
* Average age across segments
* Default vs non-default counts

These views help understand the composition of the credit portfolio.


------------------------------------------------

##  Credit Risk Staging

Risk staging framework segments the portfolio into three risk categories based on recent repayment behavior. 

      Stage	    Description
      -----     ------------
      Stage 1	Performing accounts
      Stage 2	Elevated risk accounts
      Stage 3	Non-performing accounts

These stages allow the portfolio to be monitored by **risk severity**.

--------------------------------------------------

## Power BI Dashboard
The SQL outputs feed a Power BI dashboard structured into three analytical layers.

## Portfolio Overview
High-level portfolio metrics, including:
- Customer base size
- Total credit exposure
- Revolving Credit Share
- Portfolio default rate
- Customer demographic distributions

### Defaulted Portfolio Analysis
Focused analysis of accounts that defaulted:
* Payment deterioration trends
* Demographic breakdown
* Credit exposure patterns

### Credit Risk Staging
Risk monitoring framework showing:
- Portfolio distribution across risk stages
- Exposure concentration
- Credit utilization by stage
- Default rates by risk stage


--------------------------------------------------


## Dashboard Preview
### Portfolio Overview
![Portfolio Overview](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/0c34f8f27342af9f6847c3acebe54e2f9f029ae5/dashboard/Taiwanese%20Credit%20Risk%20-%20Portfolio%20Overview.png)   

## Key Insights

- **The portfolio** contains **30,000 credit card accounts** with total **approved credit limits** of approximately **NT$5.02 billion**.
- **Revolving credit share** accounts for **49.12% of customer accounts**, representing approximately **NT$1.16 Billion** in revolving credit.
- **The overall default rate** is **22.12%**, representing **6,636** defaulted accounts.
- **The customer base** is **concentrated** in the **20-40 age range**, **indicating** that the portfolio primarily serves **working-age borrowers**.
- **Female customers** represent a slight majority of the portfolio at **60.37%**, while **male customers** account for **39.63%**.
- **Education levels** are concentrated among **undergraduate** and **graduate customers**, representing **47.51%** and **35.84%** of the portfolio respectively.
--------------------------------------------------

### Defaulted Portfolio
![Defaulted Portfolio](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/0c34f8f27342af9f6847c3acebe54e2f9f029ae5/dashboard/Taiwanese%20Credit%20Risk%20-%20Default%20Portfolio.png).

## Key Insights

- **The portfolio** contains **22.12%** or **6,636 defaulted accounts**, representing the population examined in the default analysis layer.
- **The average credit exposure** among defaulted accounts is approximately **NT$130K**, while the **median exposure** is **NT$90K**.
- **Defaulted customers** have an **average age** of **roughly 36 years**, similar to the overall portfolio average.
- **Education distribution** among defaulted customers is **led** by **undergraduate borrowers at 50.43%**, followed by **graduates at 30.83%** and **high-school borrowers at 18.73%**.
- **The gender distribution** among defaulted customers **remains** relatively **balanced**.
--------------------------------------------------

### Credit Risk Staging and Financial Impact
![Credit Risk Staging and Financial Impact](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/0c34f8f27342af9f6847c3acebe54e2f9f029ae5/dashboard/Taiwanese%20Credit%20Risk%20-%20Credit%20Risk%20Staging%20and%20Financial%20Impact.png)


## Key Insights
- **The portfolio**  shows **66.58%** performing accounts, **31.87%** elevated-risk accounts, and **1.54%** non-performing accounts.
- **Stage 3** accounts show the **highest credit utilization at 62.30%**, indicating a **greater financial stress**.
- **Stage 2** accounts are comprised **primarily** of users with **one-month and two-month payment delays**, followed by **previously cleared or dormant accounts** that subsequently **defaulted.**
- **Stage 2** accounts show a **high default rate of 65.92%**, **suggesting** early delinquency signals are **strong predictors of default**.
- **Stage 3** accounts exhibit an even **higher observed default rate of 71.92%**, **indicating greater financial stress and reduced repayment capacity**.  
--------------------------------------------------

## Business Implications
 **Finding:**    31.87% of the portfolio has a 65.92% default rate.                  
 **Suggestion:** Should be treated as the primary intervention segment.
 
 **Finding:**    Early delinquency (1-2 month delay) is a strong default signal.    
 **Suggestion:** Trigger monitoring immediately.

 **Finding:**    Stage 3 shows the highest utilization.                        
 **Suggestion:** Restrict credit exposure for these accounts.

 ***Targeting Stage 2 can reduce losses more efficiently than focusing only on Stage 3.***


----------------------------------------------------


