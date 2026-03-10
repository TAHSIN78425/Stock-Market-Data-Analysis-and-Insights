use Stock;
-- update date


UPDATE stock
SET `Compound Annual Growth Rate` =
CAST(`Compound Annual Growth Rate` AS DOUBLE);
-- Inspect TABLE
SELECT
*
FROM
stock;
-- Avg Monthly Return For Each Stock
SELECT
    `Stock Name`,
    ROUND(AVG(`Monthly Return (%)`)*100,4) AS `Avg_Monthly_Return(%)`
FROM stock
GROUP BY `Stock Name`;

-- Which Category of stocks get highest Profit
SELECT
Category,Round(SUM(Volume)*SUM(`Price Change`),2) As `Total Profit`
FROM
stock
GROUP BY Category;
-- TECH CATEGORY STOCKS GOT THE HIGHEST PROFIT


-- How Much the stock price has changed from 2015 to 2025
SELECT
  `Stock Name`,`Price at 2015`,`Current Price`,round((`Current Price`-`Price at 2015`)/`Price at 2015`,2) as ROI
  FROM stock
  group by `Stock Name`,`Price at 2015`,`Current Price`
  order by ROI DESC;
  -- NVIDIA
  
  -- which stock has gained highest volume over time
  SELECT
   `Stock Name`,Sum(Volume) as Volume
   FROM
   stock
   group by  `Stock Name`
   order by Volume desc;
   -- NVIDIA GOT THE HIGHEST VOLUME
   
-- inspect moving average for each stock
WITH Monthly_AVG AS(SELECT
    `Stock Name`, extract(month from `Date`) as  Month_No,
    MONTHNAME(`Date`) AS Month,
    ROUND(AVG(`Monthly Return (%)`)*100,4) AS `AVG Monthly RETURN (%)`
FROM stock
GROUP BY `Stock Name`,Month_No,Month)
SELECT
*, round(AVG(`AVG Monthly RETURN (%)`) OVER(partition by `Stock Name` ORDER BY Month_No rows between 2 preceding and current row),4 )as `3 MONTH MOVING AVG MONTHLY RETURN(%)`
FROM 
Monthly_AVG;
-- WHICH MONTH HAS THE HIGHEST MONTHLY RETURN (%)

SELECT
monthname(`Date`) as Month,Round(avg(`Monthly Return (%)`*100),4) as `Total Monthly Return (%)`

from stock
group by monthname(`Date`)
order by avg(`Monthly Return (%)`) desc
limit 1;
-- July has the highest monthly avg return

-- which stock has maximum Compound Annual Growth Rate

SELECT
`Stock Name`,
CAST(`Compound Annual Growth Rate` AS DOUBLE) as `Highest CAGR`
FROM
stock
group by `Stock Name`, `Compound Annual Growth Rate`
order by CAST(`Compound Annual Growth Rate` AS DOUBLE) DESC
limit 1;
-- NVIDIA HAS THE HIGHEST `Compound Annual Growth Rate` WHICH IS 71.19% FOR 10 YEARS

