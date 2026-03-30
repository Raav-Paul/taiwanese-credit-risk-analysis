# Power BI Dashboard

## This folder contains:

- Power BI file
- Dashboard screenshots
- Page structure documentation

## Portfolio Overview

High-level portfolio metrics including:

- Customer base size
- Total credit exposure
- Exposure at default
- Portfolio default rate
- Customer demographic distributions
  
### Defaulted Portfolio Analysis

Focused analysis of accounts that defaulted:

* Payment deterioration trends
* Demographic breakdown
* Credit exposure patterns

### Credit Risk Staging

Risk monitoring framework showing:

* Portfolio distribution across risk stages
* Exposure concentration
* Credit utilization by stage
* Default rates by risk stage


--------------------------------------------------

## Dashboard Preview
### Portfolio Overview
![Portfolio Overview](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/dec5cc44cec368aec407daa3b81251db7aa16c3e/dashboard/Taiwanese%20Credit%20Risk%20-%20Portfolio%20Overview.png)   

## Key Insights

- **The portfolio** contains **30,000 credit card accounts** with total **approved credit limits** of approximately **NT$5.02 billion**.
- **The overall default rate** is **22.1%**, representing **6,636** defaulted accounts.
- **The customer base** is **concentrated** in the **20-40 age range**, **indicating** that the portfolio primarily serves **working-age borrowers**.
- **Female customers** represent a slight majority of the portfolio at **53.89%**, while **male customers** account for **46.11%**.
- **Education levels** show that **undergraduate** and **graduate** customers make up the **majority** of accounts, suggesting the portfolio is **concentrated** among relatively **educated borrowers**.

--------------------------------------------------

### Defaulted Portfolio
![Defaulted Portfolio](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/dec5cc44cec368aec407daa3b81251db7aa16c3e/dashboard/Taiwanese%20Credit%20Risk%20-%20Default%20Portfolio.png)

## Key Insights

- **The portfolio** contains **6,636 defaulted accounts**, representing the population examined in the default analysis layer.
- **The average credit exposure** among defaulted accounts is approximately **NT$130K**, while the **median exposure** is **NT$90K**.
- **Defaulted customers** have an **average age** of **roughly 36 years**, similar to the overall portfolio average.
- **Education distribution** among defaulted customers is **led** by **undergraduate borrowers at 50.43%**, followed by **graduates at 30.83%** and **high-school borrowers at 18.73%**.
- **The gender distribution** among defaulted customers **remains** relatively **balanced**.


--------------------------------------------------

### Credit Risk Staging and Financial Impact

![Credit Risk Staging and Financial Impact](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/dec5cc44cec368aec407daa3b81251db7aa16c3e/dashboard/Taiwanese%20Credit%20Risk%20-%20Credit%20Risk%20Staging%20and%20Financial%20Impact.png)

## Key Insights

- **The portfolio**  shows **66.58%** performing accounts, **22.98%** elevated-risk accounts, and **10.43%** non-performing accounts.
- **Stage 3** accounts show the **highest credit utilization at 58.67%**, indicating a **greater financial stress**.
- **Stage 2** accounts are comprised **primarily** of users with **one-month payment delays**, followed by those exhibiting **minimum payment behavior**.
- **Stage 2** accounts show a **high default rate of 64.67%**, **suggesting** early delinquency signals are **strong predictors of default**.
- **Stage 3** accounts exhibit an even **higher observed default rate of 69.55%**, confirming the severity of extended payment delays, **indicating greater financial stress and reduced repayment capacity**.

    
--------------------------------------------------

## Business Implications
 **Finding:**    23.98% of the portfolio has 64.67% default rate.                                    **| Suggestion:** Should be treated as the primary intervention segment.    
 **Finding:**    Early delinquency (1-month delay) is a strong default signal.                       **| Suggestion:** Trigger monitoring immediately.         
 **Finding:**    Stage 3 shows the highest utilization.                                              **| Suggestion:** Restrict credit exposure for these accounts.

 ***Targeting Stage 2 can reduce losses more efficiently than focusing only on Stage 3.***
