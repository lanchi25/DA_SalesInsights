# Sales Insights Data Analysis Project

## Project Details
#### Problem Statement:
Atliq Hardwares - a computer hardware business facing challenges to increase revenue in a dynamically changing market. The sales director needs a dashdboard that can give him real-time sales insights that will provid him insights to increase revenue.

#### What I will do:
As a data analyst I will provide this dashboard to the sales director.

#### Domain: 
Fast Moving Consumer Goods (FMCG)

#### Skill Acquired: 
Tech: SQL, Power BI.
Core: Business understanding, analytical mindset.

#### Method: 
Use STAR Method (Situation, Task, Action, Result)
- Situation: Computer hardware business facing challenges in scaling within a dynamically changing market and lacking actionable insights.
- Task/ Action: Performed data analysis using SQL and Power BI to track revenue growth, year-over-year (YOY) trends, and region-wise sales performance.
- Result: The dashboard enables quick, data-informed decisions, effectively displaying sales trend and potentially raising revenue by at least 7% in the next quarter.
  
## Data Analysis Using SQL
1. Show all customer records  
`SELECT * FROM customers;`
3. Show total numer of customers  
`SELECT COUNT(*) FROM customers;`
4. Show transactions for Cheinnai market (market code for chennai is Mark001)  
`SELECT * FROM transactions WHERE market_code = 'Mark001';`
5. Show distinct product codes that were sold in chennai  
`SELECT distinct product_code FROM transactions WHERE market_code = 'Mark001';`
6. Show transactions where currency is US dollars  
`SELECT * FROM transactions WHERE currency = 'USD';`
7. Show transactions in 2020 join by date table  
`SELECT * FROM transactions INNER JOIN date ON transactions.order_date = date.date WHERE date.year = 2020;`
8. Show total revenue in year 2020  
`SELECT SUM(sales_amount) FROM transactions INNER JOIN date ON transactions.order_date = date.date WHERE date.year = 2020 and transactions.currency = 'INR\r' or transactions.currency = 'USD\r';`
9. Show total revenue in year 2020, January Month  
`SELECT SUM(sales_amount) FROM transactions INNER JOIN date ON transactions.order_date = date.date WHERE date.year = 2020 and date.month_name = 'January' and transactions.currency = 'INR\r' or transactions.currency = 'USD\r';`
10. Show total revenue in year 2020 in Chennai  
`SELECT SUM(*) FROM transactions INNER JOIN date ON transactions.order_date = date.date WHERE date.year = 2020 and transactions.market_code = 'Mark001' and transactions.currency = 'INR\r' or transactions.currency = 'USD\r';`
## Data Analysis Using Power BI
1. Formula to create norm_amount column  
   `= Table.AddColumn(#"Filtered Rows", "norm_amount", each if [currency] = "USD" or [currency] = "USD\r" then [sales_amount]*75 else [sales_amount], type any)`

