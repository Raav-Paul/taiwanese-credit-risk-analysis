# Taiwanese Credit Risk Analysis 

## Overview

This project analyzes credit card default risk using the [UCI Taiwanese Credit Card Default dataset](https://archive.ics.uci.edu/dataset/350/default+of+credit+card+clients).

The goal is to transform raw financial data into structured analytical views that support **credit risk monitoring, portfolio analysis, and business intelligence dashboards**.

The workflow implements a structured workflow that moves from **raw transactional data > cleaned staging table > data profiling >  BI dashboards**.

--------------------------------------------------

## Tools Used

* [SQL (MySQL)](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/c51308c824ccccb7d3b5b6f09b465824145c7e6c/sql/taiwanese_defaults.sql)
* Power BI
* GitHub

--------------------------------------------------

## Dataset

* Source: Taiwanese Credit Card Default dataset
* Records: ~30,000 customers
* Features include:

  * Credit limit
  * Demographics (age, gender, education, marital status)
  * Monthly payment delays
  * Monthly bill statements
  * Monthly payments
  * Default status

The dataset tracks customer payment behavior over several months to analyze **default risk patterns**.

--------------------------------------------------

## Project Workflow

### 1. Data Staging

A staging table is created from the raw dataset to allow safe transformation and cleaning.

Key steps:

* Copy raw data into a staging table
* Remove duplicate header rows
* Standardize column names for readability

Examples of transformations are as follows:

    X1 → Given_credit
    X2 → Gender
    X3 → Education
    X6–X11 → Monthly delay indicators
    Y → Oct_default

---------------------------------------------------

### 2. Data Standardization

Several variables were converted into readable categorical values.

Examples:

    Field           Original Values Converted Values                            

    Gender          1 / 2            Male / Female                               
    Education       1 / 2 / 3 / 4    Graduate / Undergrad / High School / Others 
    Marital Status  1 / 2 / 3       Married / Single / Unknown                  
    Default         0 / 1            No / Yes                                    

Monthly delay indicators were also mapped into interpretable repayment behavior:

* Dormant
* Balance Cleared
* Minimum Due Cleared
* 1–9 Month Delay

--------------------------------------------------

### 3. Data Profiling

Exploratory profiling views were created to understand portfolio characteristics:

* Customer demographics
* Default distribution
* Age patterns across customer groups

Example profiling output:

* Average customer age
* Default counts
* Distribution of customers by education, gender, and marital status

--------------------------------------------------

### 4. Default Behavior Analysis

The project evaluates how **payment delay history relates to default probability**.

A view calculates:

* total accounts per delay category
* number of defaults
* default percentage

This highlights how **increasing payment delays correlate strongly with higher default risk**.

--------------------------------------------------

### 5. Payment Trend Monitoring

A payment trend view evaluates repayment momentum using recent payment history.

Accounts are classified as:

* **Stable or Improving**
* **Declining Trend**

This provides an early signal of **potential financial deterioration**.

--------------------------------------------------

### 6. Customer Journey Mapping

A journey framework categorizes customers based on payment behavior and default outcome.

Possible stages include:

* Healthy Customer Journey
* Early Warning Stage
* Intervention Required Stage
* Assessment Required

This framework helps simulate how lenders may monitor **customer risk progression over time**.

--------------------------------------------------

### 7. Risk Staging Framework

The project implements a simplified **credit risk staging model** inspired by common banking frameworks.

Accounts are classified into:

         Risk Stage                Description                           
 
         Stage 1 – Performing      Customers meeting payment obligations 
         Stage 2 – Elevated Risk   Early delinquency signals             
         Stage 3 – Non-Performing  Severe payment delays                 
 
These stages allow portfolio segmentation and risk monitoring.

--------------------------------------------------

## Power BI Dashboard

The SQL outputs feed a Power BI dashboard structured into three analytical layers.

## Portfolio Overview

High-level portfolio metrics including:

- Customer base size

- Total credit exposure

- Exposure at default

- Portfolio default rate

- Customer demographic distributions

### Defaulted Portfolio Analysis

Focused analysis of accounts that defaulted:

* payment deterioration trends
* demographic breakdown
* credit exposure patterns

### Credit Risk Staging

Risk monitoring framework showing:

* portfolio distribution across risk stages
* exposure concentration
* credit utilization by stage
* default rates by risk stage


--------------------------------------------------

## Dashboard Preview
### Portfolio Overview
![Portfolio Overview](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/878154243b6f804d8701b16d2988e87808eb4707/dashboard/Taiwanese%20Credit%20Risk%20-%20Portfolio%20Overview.png)   

## Key Insights

- The portfolio contains 30,000 credit card accounts with total approved credit limits of approximately NT$5.02 billion.

- The overall default rate is 22.1%, representing roughly 7,000 defaulted accounts.

- The customer base is concentrated in the 25–40 age range, indicating that the portfolio primarily serves working-age borrowers.

- Female customers represent the majority of the portfolio (~60%), while male customers account for roughly 40%.

- Education levels show that undergraduate and graduate customers make up the majority of accounts, suggesting the portfolio is concentrated among relatively educated borrowers.

--------------------------------------------------

### Defaulted Portfolio
![Defaulted Portfolio](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/e743cc1669cb47abeec0d9f923dd147a3ec49454/dashboard/Taiwanese%20Credit%20Risk%20-%20Default%20Portfolio.png)

## Key Insights

- The portfolio contains 6,636 defaulted accounts, representing the population examined in the default analysis layer.

- The average credit exposure among defaulted accounts is approximately NT$130K, while the median exposure is NT$90K.

- Most defaulted accounts show stable or improving payment trends, while a smaller segment shows clear deterioration.

- Defaulted customers have an average age of roughly 36 years, similar to the overall portfolio average.

- Education distribution among defaulted customers is led by undergraduate borrowers at 50.43%, followed by graduates at 30.83% and high-school borrowers at 18.73%.

- The gender distribution among defaulted customers remains relatively balanced.


--------------------------------------------------

### Credit Risk Staging and Financial Impact

![Credit Risk Staging and Financial Impact](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/e743cc1669cb47abeec0d9f923dd147a3ec49454/dashboard/Taiwanese%20Credit%20Risk%20-%20Credit%20Risk%20Staging%20and%20Financial%20Impact.png)

## Key Insights

- The portfolio segmentation shows 66.6% performing accounts, 23% elevated-risk accounts, and 10.4% non-performing accounts.

- Stage 3 (Non-Performing) accounts show the highest credit utilization at 58.67%, indicating a greater financial stress.

- Stage 2 (Elevated Risk) accounts are comprised primarily of users with one-month payment delays, followed by those exhibiting minimum payment behavior.

- Stage 2 (Elevated Risk) accounts show a high default rate of 64.67%, suggesting early delinquency signals are strong predictors of default.

- Stage 3 accounts exhibit an even higher observed default rate of 69.55%, confirming the severity of extended payment delays, indicating greater financial stress and reduced repayment capacity.
  
--------------------------------------------------

## Purpose of the Project

This project demonstrates how structured data analysis can be used to support credit portfolio monitoring and risk analysis.

### Key objectives include:

- Cleaning and standardizing a financial dataset using SQL

- Building analytical views to evaluate payment behavior and default patterns

- Segmenting customers into risk stages for portfolio monitoring

- Presenting insights through an interactive Power BI dashboard

--------------------------------------------------

