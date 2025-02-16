-- Portfolio Holdings with Dividend History
SELECT 
p.PortfolioName,
s.StockName,
s.Sector,
COUNT(dh.Dividend_ID) as Dividend_Payments,
SUM(dh.DividendAmount) as Total_Dividends
FROM Portfolio p
LEFT JOIN Stock s ON p.Portfolio_ID = s.Portfolio_ID
LEFT JOIN Dividend_History dh ON s.Stock_ID = dh.Stock_ID
GROUP BY p.PortfolioName, s.StockName, s.Sector
HAVING Dividend_Payments > 0;

-- Portfolio Sector Distribution
SELECT 
p.PortfolioName,
s.Sector,
COUNT(s.Stock_ID) as Stocks_In_Sector,
SUM(t.Quantity * t.TransPrice) as Total_Investment,
SUM(pl.Profit) as Sector_Profits,
SUM(pl.Loss) as Sector_Losses
FROM Portfolio p
INNER JOIN Stock s ON p.Portfolio_ID = s.Portfolio_ID
LEFT JOIN Transaction t ON s.Stock_ID = t.Stock_ID
LEFT JOIN Profit_Loss pl ON s.Stock_ID = pl.stock_id
GROUP BY p.PortfolioName, s.Sector
ORDER BY p.PortfolioName, Total_Investment DESC;