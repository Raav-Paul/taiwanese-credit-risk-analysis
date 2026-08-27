# Power BI Dashboard

## This folder contains:

- Power BI file
- Dashboard screenshots
- Page structure documentation

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

- **The portfolio** contains **30,000 credit card accounts** with total **approved credit limits** of approximately **NT$5.02 billion**. Notably, revolving credit accounts for **49.12%** of all customer accounts, with **NT$1.16 billion** in active balances, signaling heavy reliance on continuous credit line roll-overs.
- The overall portfolio default rate stands at **22.12% (6,636 accounts)**, establishing a high baseline risk environment across the retail lending base.
- Customer distribution is heavily concentrated in the prime working-age cohort of **20-40 years old** with an **average age of 35.49**.
- Female cardholders represent the majority of the portfolio at **60.37% vs. 39.63% male**, while single customers edge out married borrowers **53.89% vs. 46.11%**.
- **Higher education cohorts** dominate portfolio at **47.51% and 35.84%**, which account for over **83.35%** of all accounts and hold the vast majority of total exposure **NT$2.1bn** and **NT$2.3bn** respectively.
--------------------------------------------------

### Defaulted Portfolio
![Defaulted Portfolio](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/0c34f8f27342af9f6847c3acebe54e2f9f029ae5/dashboard/Taiwanese%20Credit%20Risk%20-%20Default%20Portfolio.png)

## Key Insights

- **The portfolio** contains **22.12%** or **6,636 defaulted accounts**, representing the non-performing accounts.
- **The average credit exposure** among defaulted accounts is approximately **NT$130K**, while the **median exposure** is **NT$90K**. The higher average points to heavy default losses coming from larger credit lines.
- **Defaulted customers** have an **average age** of **roughly 36 years**, similar to the overall portfolio average. Indicating that default risks are directly linked to active workforce income dynamics rather than retirement income.
- Male customers show a relatively higher rate of defaulting, expanding their portfolio presence from **39.63%** overall in the portfolio overview to **43.29%** among non-performing accounts.
-  Graduate defaulters represent the highest average loss exposure per defaulted account at **NT$178K**, significantly outpacing Undergraduates at **NT$113K** and High School borrowers at **NT$98K**
--------------------------------------------------

### Credit Risk Staging and Financial Impact
![Credit Risk Staging and Financial Impact](https://github.com/Raav-Paul/taiwanese-credit-risk-analysis/blob/0324901015b9b0d5eba86ce82e779ed4b2e7145c/dashboard/Taiwanese%20Credit%20Risk%20-%20Credit%20Risk%20Staging%20and%20Financial%20Impact.png)


## Key Insights
- **The portfolio** shows **77.27%** performing accounts, with a 13.83% default rate, indicating over **1 in 8** performing customers are jumping straight into default within 30 days **without any early-warning signs**.
- **Stage 3** accounts show the **highest credit utilization at 62.30%**, indicating a **greater financial stress**. **Suggesting** borrowers are systematically maxing out their credit lines right before defaulting.
- **Stage 2** shows **21.18%** elevated risk accounts, with a **48.72%** default rate, indicating
nearly half of all accounts that fall 30–60 days past due end up defaulting, **suggesting** early delinquency signals are **strong predictors of default**.
- **Stage 3** accounts exhibit an even **higher observed default rate of 71.92%**, **indicating greater financial stress and reduced repayment capacity**.  
--------------------------------------------------

## Business Implications & Recommendations
 **Finding:**   
 Stage 2 accounts account for 21.18% of volume but drive a 48.72% default rate.     
 **Action:**    
 Prioritize Stage 2 for active collections and restructuring. Intervening here yields far higher loss recovery than attempting downstream recovery in Stage 3.
 
 **Finding:**   
 Early delinquency (1-2 month delay) is a strong default signal.    
 **Action:**     
 Implement automated risk flags immediately upon a 1 Month Delay to engage borrowers before they roll over into secondary delinquency.

 **Finding:**   
 Stage 3 shows the highest utilization at 62.30% leading into defaults              
 **Action:**     
 Trigger automatic credit line freezes or step-down decreases as soon as an account migrates to Stage 2 to prevent capital drawdown before charge-off.

----------------------------------------------------
