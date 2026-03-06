# SQL

This folder contains the SQL pipeline used to clean, transform, and analyze the
[UCI Taiwanese Credit Card Default dataset](https://archive.ics.uci.edu/dataset/350/default+of+credit+card+clients).

The scripts implement a structured workflow that moves from:

**Raw Data Ingestion > Data Standardization > Analytical Views > Risk Segmentation**

---

# Main Script

`taiwanese_defaults.sql`

This script performs the complete data preparation and analysis pipeline.

---

# Workflow Overview

## 1. Data Staging

A staging table is created from the raw dataset to allow transformations without modifying the original data.

### Steps

* Create a staging table from the raw dataset
* Remove duplicate header rows
* Rename encoded column names to meaningful labels

### Example Transformations

       Original Column   	Renamed Column
       X1	                Given_credit
       X2	                Gender
       X3	                Education
       X4	                Marital_status
       X6–X11	            Monthly delay indicators
       Y	                Oct_default

---

## 2. Data Standardization

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
* 1–9 Month Delay

---

## 3. Data Profiling

Views are created to explore demographic and portfolio characteristics.

Examples include:

* Customer distribution by gender, education, and marital status
* Average age across segments
* Default vs non-default counts

These views help understand the composition of the credit portfolio.

---

## 4. Default Behavior Analysis

A view evaluates the relationship between **payment delay history and default probability**.

The analysis calculates:

* Total accounts per delay category
* Number of defaults
* Percentage of defaults

This highlights how increasing payment delays correlate with higher default risk.

---

## 5. Payment Trend Analysis

A payment trend view classifies repayment behavior based on recent payment patterns.

Accounts are categorized as:

* **Stable or Improving**
* **Declining Trend**

This provides an early indicator of financial deterioration.

---

## 6. Customer Journey Classification

Customers are grouped into behavioral journey stages based on repayment behavior and default outcomes.

Possible classifications include:

* Healthy Customer Journey
* Early Warning Stage
* Intervention Required Stage
* Assessment Required

This simulates how lenders may track **customer risk progression over time**.

---

## 7. Credit Risk Staging

A rule-based risk staging framework segments the portfolio into three risk categories.

      Stage	Description
      Stage 1	Performing accounts
      Stage 2	Elevated risk accounts
      Stage 3	Non-performing accounts

These stages allow the portfolio to be monitored by **risk severity and credit exposure**.

---

# Output

The SQL pipeline generates several analytical views that can be used directly in **business intelligence tools such as Power BI**.

These views support:

* Portfolio risk monitoring
* Exposure analysis
* Default behavior analysis
* Credit risk staging dashboards
