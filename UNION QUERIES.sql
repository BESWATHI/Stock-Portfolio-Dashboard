-- Find all users (both investors and traders)
SELECT User_ID, 'Investor' as UserType 
FROM Investor
UNION
SELECT User_ID, 'Trader' as UserType 
FROM Trader;

-- Get all financial transactions (both dividends and regular transactions)
SELECT Stock_ID, TransDate as Date, TransType as Type, TransPrice as Amount 
FROM Transaction
UNION
SELECT Stock_ID, DatePaid, 'Dividend' as Type, DividendAmount 
FROM Dividend_History;