/* Data Analysis Using SQL*/

--1. Show all table records
SELECT * FROM customers;

SELECT * FROM transactions; /*NX:có giá trị doanh thu < 0), có đơn vị tiền tệ USD*/

SELECT * FROM date;

SELECT * FROM markets; /*thị trường NY và Paris nằm ngoài Ấn độ*/

SELECT * FROM products;

--2. Show total number of customers/ transactions
SELECT COUNT (*) FROM customers;
SELECT COUNT (*) FROM transactions;

--3. Show transactions for Chennai market (market code for chennai is Mark001)
SELECT * FROM transactions WHERE market_code = 'Mark001';
SELECT COUNT(*) AS 'count_mark'FROM transactions WHERE market_code = 'Mark001';

--4. Show distinct product codes that were sold in chennai
SELECT DISTINCT product_code FROM transactions WHERE market_code = 'Mark001';

--5. Show transactions where currecy is US dollars
SELECT * FROM transactions WHERE currency = 'USD';

--6. Show transactions where revenue <= 0
SELECT * FROM transactions WHERE sales_amount <= 0;

--7. Show transactions in 2020 join by date table
SELECT * FROM transactions INNER JOIN date ON transactions.order_date = date.date WHERE date.year='2020';


--8. Show total revenue in year 2020
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date = date.date
 WHERE date.year='2020';


--9. Show total revenue in year 2020, January Month
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date = date.date
 WHERE date.year='2020' and month_name = 'January';


--10. Show total revenue in year 2020 in Chennai
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date = date.date
 WHERE date.year='2020' and transactions.market_code='Mark001';

 --11. Show distinct currency in transactions
SELECT DISTINCT currency FROM transactions;

SELECT COUNT(*) FROM transactions WHERE currency = 'INR\r';

SELECT COUNT(*) FROM transactions WHERE currency = 'INR';

SELECT COUNT(*) FROM transactions WHERE currency = 'USD';