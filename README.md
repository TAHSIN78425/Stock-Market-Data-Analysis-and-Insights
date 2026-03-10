# Stock Market Data Analysis and Insights
## Business Problem
Investors often struggle to identify which stocks provide the best long-term returns and which sectors perform better over time. 
Without proper data analysis, it becomes difficult to evaluate stock performance, compare companies, and make informed investment decisions.
Market fluctuations, large volumes of financial data, and multiple performance indicators make it challenging for investors and stakeholders to determine the most profitable investment opportunities.
## Project Overview
The purpose of this project is to analyze stock market data and provide insights that help investors make better investment decisions.

This analysis focuses on identifying trends, performance metrics, and key indicators that influence stock performance. By evaluating historical data and financial metrics, investors and stakeholders can make more informed decisions and maximize the returns on their investments.

The project aims to:
- Analyze stock performance over time
- Identify profitable investment opportunities

- Evaluate financial indicators such as Monthly Return(%),Compound Annual Growth Rate, and price trends

- Provide insights that support smarter investment strategies

### Data Source
We have used the historical data <a href='https://finance.yahoo.com/markets/'>Yahoo Finance<a> from 2015 to 2025
  ### Tools
- Excel — Data cleaning and preprocessing
- SQL — Exploratory data analysis
- Tableau — Interactive dashboard and reporting

## Process
**Step 1**: Data Collection

Collected historical stock market data for 12 trending stocks from the Yahoo Finance website.
Each stock dataset was downloaded separately as a CSV file, resulting in a total of 12 CSV files.

**Step 2**: Data Cleaning & Integration

All 12 CSV files were cleaned and merged into a single dataset to enable comparative analysis across different stocks.

Key preprocessing steps included:

- Standardizing column names

- Removing missing or duplicate values

- Combining datasets into one master stock table

Additionally, a Category column was created to classify each stock into its industry sector, such as:

- Technology

- Finance

- Healthcare

- Consumer

This classification allowed analysis of which industry sectors performed best over time.
## Step 3: Feature Engineering

Several financial metrics were calculated to support deeper analysis of stock performance.

### 1. Monthly Return (%)

Measures the percentage return of a stock within a trading period.

**Formula:**

Monthly Return = ((Close - Open) / Open) * 100

---

### 2. Price Change

Represents the absolute change in stock price during the trading period.

**Formula:**

Price Change = Close - Open

---

### 3. Volatility

Used as a simple proxy to estimate how much the stock price fluctuates during the trading period.

**Formula:**

Volatility = (High - Low) / Open

---

### 4. Minimum Opening Price

Used **Excel `MINIFS()`** to determine the **lowest opening price** for each stock across the dataset.

---

### 5. Maximum Opening Price

Used **Excel `MAXIFS()`** to determine the **highest opening price** recorded for each stock.


## Step 4: CAGR Calculation

Calculated the **Compound Annual Growth Rate (CAGR)** for each stock between **2015 and 2025** to measure long-term growth.

### Formula

CAGR = (Final Price / Initial Price)^(1 / Years) - 1

Where:

- **Final Price** = Stock price at the end of the time period  
- **Initial Price** = Stock price at the beginning of the time period  
- **Years** = Total number of years in the investment period  

### Purpose

CAGR provides a **standardized measure of long-term investment performance** by showing the average annual growth rate of a stock over a specific period.

## Step 3: Exploratory Data Analysis (EDA)

To understand stock performance and uncover meaningful insights, several **business questions** were explored using SQL queries.

### Business Questions

1. **What is the average monthly return for each stock?**

2. **Which category of stocks generates the highest profit?**

3. **How much has the stock price changed between 2015 and 2025?**

4. **Which stock has gained the highest trading volume over time?**

5. **What is the moving average trend for each stock?**

6. **Which month records the highest monthly return (%)?**

7. **Which stock has the maximum Compound Annual Growth Rate (CAGR)?**

All these questions were analyzed using **SQL queries to extract insights from the dataset.**

## Dashboard
<img src='https://github.com/TAHSIN78425/images/blob/main/Stock%20Market%20Data%20Analysis%20and%20Insights.png'/>

The dashboard was created to visualize stock performance, risk, and profitability across different companies and sectors.

### Key Performance Indicators (KPIs)

The following KPI metrics were included to highlight overall stock performance:

- **Highest Average Monthly Return**
- **Top Performing Stock**
- **Total Profit**
- **Highest Compound Annual Growth Rate (CAGR)**

---

### Visualizations

**1. Risk vs Return Analysis (Scatter Plot)**  
- X-axis: Risk (Standard Deviation of Monthly Returns)  
- Y-axis: Average Monthly Return  
- Helps identify high-return and high-risk stocks.

**2. Trading Volume by Stock (Bar Chart)**  
- Compares the total trading volume across different stocks.

**3. Profit by Stock Category (Bar Chart)**  
- Shows which stock sector (Technology, Finance, Healthcare, Consumer, etc.) generates the highest profit.

**4. Price Fluctuation Analysis (Bar Chart)**  
- Compares stock prices between **2015 and the current year** to visualize long-term price growth.

---

### Calculated Fields Used

**Total Profit**

Total Profit = SUM(Volume) * SUM(Price Change)

## Key Insights

1. **NVIDIA** showed the strongest performance among all analyzed stocks, recording both the **highest average monthly return** and the **highest Compound Annual Growth Rate (CAGR)**.

2. **Technology** stocks generated the highest overall profit, indicating strong long-term growth and high trading activity in the tech sector.

3. **July** recorded the highest monthly return  on average compared to other months, suggesting stronger market performance during that period.

4. **Higher risk** tends to correlate with **higher returns**, as observed in the risk (standard deviation) vs return scatter plot, where stocks with greater volatility often produced larger returns.
Where:

- **Volume** = Number of shares traded  
- **Price Change** = Close - Open
5. Stocks with higher trading **volume** generally showed stronger price movements, indicating increased investor interest and market activity.
