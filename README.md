# SALES INSIGHT DATA ANALYSIS PRESENTATION

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


## Analysis
- Use SQL to extract and load data to Power BI
- Use Power query to clean and transform data
- Build data model in Power BI
- Use SQL statements to query data for analysis
  
### Data Analysis Using Power BI
**Data Model**  
![image](https://github.com/user-attachments/assets/71d22910-6e0b-483c-98b1-2ea2ede14d3e)

**DAX, Measure**

1. Formula to create norm_amount column  
   `= Table.AddColumn(#"Filtered Rows", "norm_amount", each if [currency] = "USD" or [currency] = "USD\r" then [sales_amount]*75 else [sales_amount], type any)`

### Data Analysis Using SQL
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


## Report
<a href="https://app.powerbi.com/view?r=eyJrIjoiNjVhY2Q3MGEtM2VjYS00MmMwLWEyZDQtMWYxMTM2NmQ0ZmM3IiwidCI6IjFkYjA0Njk1LWI4NzYtNGE1YS04MzQwLWU2MGI4ZTFiZWVhMiIsImMiOjEwfQ%3D%3D" 
target="_blank">Interactive Dashboard</a>

_**Illustration of Sale Insight Dashboard:**_
![Example of Sale Insight Dashboard](https://github.com/user-attachments/assets/00bc3b2b-edad-4d39-9570-32ae01e356a3)


_**Recommendation:**_  
The business should:
  + Run creative seasonal marketing campaigns (voucher, discount,..) with different products. Besides the best-selling items, we need to have marketing campaigns for the items that are not selling well.
  + Listen and record negative customer feedback about products and services... To find out the unresonable points (price, quality, delivery, errors) and fix them.
