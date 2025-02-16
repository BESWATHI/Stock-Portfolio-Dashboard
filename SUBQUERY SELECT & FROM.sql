-- Calculate Total investment
SELECT p.PortfolioName,
    (SELECT SUM(TransPrice * Quantity) 
     FROM Transaction t 
     WHERE t.User_ID = p.User_ID AND TransType = 'Buy') as TotalInvestment
FROM Portfolio p;

-- Find stocks with above-average market cap
SELECT s.StockName, s.MarketCap
FROM Stock s, (
    SELECT AVG(MarketCap) as AvgMarketCap
    FROM Stock
) as avg_stats
WHERE s.MarketCap > avg_stats.AvgMarketCap;
