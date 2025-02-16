-- degree of price movement or fluctuation for each stock within the last 90 days
SELECT 
    s.StockName,
    s.Sector,
    (SELECT MAX(shd.ClosePrice) - MIN(shd.OpenPrice)
     FROM Stock_Historic_Data shd
     WHERE shd.Stock_ID = s.Stock_ID
     AND shd.Date >= DATE_SUB(CURRENT_DATE, INTERVAL 90 DAY)) as Price_Range,
    (SELECT COUNT(DISTINCT t.User_ID)
     FROM Transaction t
     WHERE t.Stock_ID = s.Stock_ID
     AND t.TransType = 'Buy'
     AND t.TransDate >= DATE_SUB(CURRENT_DATE, INTERVAL 90 DAY)) as Recent_Buyers
FROM Stock s
WHERE s.Stock_ID IN (
    SELECT shd.Stock_ID
    FROM Stock_Historic_Data shd
    GROUP BY shd.Stock_ID
    HAVING AVG(shd.Volume_Traded) > (
        SELECT AVG(Volume_Traded) * 2
        FROM Stock_Historic_Data
    )
)
AND EXISTS (
    SELECT 1
    FROM Stock_Recommendation sr
    WHERE sr.Stock_ID = s.Stock_ID
    AND sr.Date_Recom >= DATE_SUB(CURRENT_DATE, INTERVAL 90 DAY)
);