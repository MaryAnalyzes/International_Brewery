

select * from Sheet1$

--Total Cost
select sum(COST) as TotalCost from Sheet1$;

--Total Profit
select sum(PROFIT) as Totalprofit from Sheet1$;

--Total Revenue
select sum(COST+PROFIT) as TotalRevenue from Sheet1$;

--Profit by Territory
select Territory,sum(PROFIT) as Tprofit from Sheet1$
group by Territory;

--Profit by Region
select [REGION ],sum(PROFIT) as Tprofit from Sheet1$
group by [REGION ]
order by Tprofit Desc;

--Profit by Country
select COUNTRIES,sum(PROFIT) as Tprofit from Sheet1$
group by COUNTRIES;

--Profit by Brand
select BRANDS,sum(PROFIT) as Tprofit from Sheet1$
group by BRANDS
order by Tprofit Desc;

--Cost by Brand
select BRANDS,sum(COST) as Tcost from Sheet1$
group by BRANDS
order by Tcost Desc;

--Profit by Month
select MONTHS,sum(PROFIT) as Tprofit from Sheet1$
group by MONTHS
order by Tprofit;

--Profit by year
select YEARS, sum(PROFIT) as Tprofit from Sheet1$
group by YEARS
order by Tprofit;

--Profit by Month in 2017
select MONTHS,sum(PROFIT) as Tprofit from Sheet1$
where YEARS=2017
group by MONTHS
order by Tprofit;

--Profit by Month in 2018
select MONTHS,sum(PROFIT) as Tprofit from Sheet1$
where YEARS=2018
group by MONTHS
order by Tprofit;

--Profit by Month in 2019
select MONTHS,sum(PROFIT) as Tprofit from Sheet1$
where YEARS=2019
group by MONTHS
order by Tprofit;

--Quantity sold by Sales Rep
select SALES_REP,sum(QUANTITY)  as Tquantity from Sheet1$
group by SALES_REP
order by Tquantity desc;

--Total sales by sales rep
select SALES_REP,sum(COST+PROFIT)  as Tsale from Sheet1$
group by SALES_REP
order by Tsale desc;

--Brand Profit Margin
select BRANDS,avg([Profit Margin])  as Profitmargin  from Sheet1$
group by BRANDS
order by Profitmargin desc;

