-- 1. Get stock prices for a specific date:
SELECT Stock_ID, OpenPrice, ClosePrice 
FROM Stock_Historic_Data 
WHERE Date = '2024-12-03';

-- 2. Find stocks with dividends:
SELECT Stock_ID, DividendAmount, DatePaid 
FROM Dividend_History;

-- 3. Get all stocks in a specific sector:
SELECT StockName, TickerSymbol 
FROM Stock 
WHERE Sector = 'Technology';



