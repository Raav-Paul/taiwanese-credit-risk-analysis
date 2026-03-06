# SQL

- This folder contains the SQL pipeline used to clean, transform, and analyze the [UCI Taiwanese Credit Card Default dataset](https://archive.ics.uci.edu/dataset/350/default+of+credit+card+clients).

- The scripts implement a structured workflow that moves from raw data ingestion > data standardization > analytical views > risk segmentation.

# Main Script

taiwanese_defaults.sql

- This script performs the complete data preparation and analysis pipeline.

# Workflow Overview
- Data Staging

      A staging table is created from the raw dataset to allow transformations without modifying the original data.

- Steps include:

      Creating a staging table from the raw dataset

      Removing duplicate header rows

      Renaming encoded column names to meaningful labels

- Example transformations:

       Original Column   	Renamed Column
       X1	                Given_credit
       X2	                Gender
       X3	                Education
       X4	                Marital_status
       X6–X11	            Monthly delay indicators
       Y	                Oct_default
- Data Standardization

      Encoded numeric fields are converted into readable categorical values.

- Examples:

      Gender codes converted to Male / Female

      Education levels converted to Graduate / Undergrad / High School

      Marital status standardized

      Default indicator converted to Yes / No

      Monthly delay values are also mapped to descriptive repayment states, such as:
      Dormant
      Balance Cleared
      Minimum Due Cleared
      1–9 Month Delay

- Data Profiling

      Views are created to explore demographic and portfolio characteristics.

- Examples include:

      customer distribution by gender, education, and marital status

      average age across segments

      default vs non-default counts

These views help understand the composition of the credit portfolio.

- Default Behavior Analysis

      A view evaluates the relationship between payment delay history and default probability.

- The analysis calculates:

      total accounts per delay category

      number of defaults

      percentage of defaults

      This highlights how increasing payment delays correlate with higher default risk.

- Payment Trend Analysis

      A payment trend view classifies repayment behavior based on recent payment patterns.

- Accounts are categorized as:

      Stable or Improving

      Declining Trend

This provides an early indicator of financial deterioration.

- Customer Journey Classification

      Customers are grouped into behavioral journey stages based on repayment behavior and default outcomes.

Possible classifications include:

      Healthy Customer Journey

      Early Warning Stage

      Intervention Required Stage

      Assessment Required

This simulates how lenders may track customer risk progression over time.

- Credit Risk Staging

A rule-based risk staging framework segments the portfolio into three risk categories.

      Stage	Description
      Stage 1	Performing accounts
      Stage 2	Elevated risk accounts
      Stage 3	Non-performing accounts

These stages allow the portfolio to be monitored by risk severity and credit exposure.

- Output

       The SQL pipeline generates several analytical views that can be used directly in business intelligence tools such as Power BI.

- These views support:

      portfolio risk monitoring

      exposure analysis

      default behavior analysis

      credit risk staging dashboards
