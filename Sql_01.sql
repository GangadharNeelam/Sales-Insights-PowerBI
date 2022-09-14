use sales;

show tables;

select * from transactions;

select count(*) from transactions;

select * 
from transactions
where market_code = 'Mark001';

select count(*) 
from transactions
where market_code = 'Mark001';

select * 
from transactions
where currency = 'USD';

select *
from transactions
where year(order_date) = 2020;

select * from transactions;

select sum(t.sales_amount) as 'Total_revenue_in_2022'
from transactions t
inner join date d on d.date = t.order_date
where d.year = 2020;

select sum(t.sales_amount) as 'Total_revenue_in_2020'
from transactions t
inner join date d on d.date = t.order_date
where d.year = 2020 and market_code = 'Mark001';

select distinct product_code from transactions where market_code = 'Mark001';
use sales;
select * from transactions;
select * from transactions where sales_amount <=0;

select count(*) from transactions
where currency = 'INR\r';

select * from transactions
where currency = 'USD'or currency = 'USD\r';

select count(*) from transactions
where currency = 'INR';

select * from transactions;

select sum(sales_amount) from transactions
where year(order_date) = 2020;

select sum(sales_amount) from transactions
where year(order_date) = '2020' and month(order_date) = 1;

select sum(sales_amount) from transactions
where year(order_date) = 2020 and market_code = 'Mark001';
