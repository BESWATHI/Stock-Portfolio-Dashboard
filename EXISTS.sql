-- Find stocks that have received recommendations but are not in any watchlist
SELECT s.StockName, s.TickerSymbol
FROM Stock s
WHERE EXISTS (
    SELECT 1 
    FROM Stock_Recommendation sr 
    WHERE sr.Stock_ID = s.Stock_ID
)
AND NOT EXISTS (
    SELECT 1 
    FROM Watchlist w 
    WHERE w.Stock_ID = s.Stock_ID
);

