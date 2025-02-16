INSERT INTO Profit_Loss (Profit, Loss, Date_Reported, User_ID, stock_id)
SELECT 
    CASE 
        WHEN (sell.sell_price - buy.buy_price) > 0 
        THEN (sell.sell_price - buy.buy_price) * sell.sell_qty
        ELSE NULL 
    END as Profit,
    CASE 
        WHEN (sell.sell_price - buy.buy_price) <= 0 
        THEN ABS(sell.sell_price - buy.buy_price) * sell.sell_qty
        ELSE NULL 
    END as Loss,
    sell.TransDate as Date_Reported,
    sell.User_ID,
    sell.Stock_ID
FROM (
    SELECT 
        t.Stock_ID,
        t.User_ID,
        t.TransDate,
        t.TransPrice as sell_price,
        t.Quantity as sell_qty
    FROM Transaction t
    WHERE t.TransType = 'Sell'
) sell
JOIN (
    SELECT 
        t.Stock_ID,
        t.User_ID,
        t.TransDate,
        t.TransPrice as buy_price,
        t.Quantity as buy_qty
    FROM Transaction t
    WHERE t.TransType = 'Buy'
) buy ON sell.Stock_ID = buy.Stock_ID 
AND sell.User_ID = buy.User_ID
AND sell.TransDate >= buy.TransDate;

UPDATE PORTFOLIO
SET TOTAL_PROFIT = (select sum(Profit) from PROFIT_LOSS),
TOTAL_LOSS = (select sum(Loss) from PROFIT_LOSS)
WHERE PORTFOLIO_ID = 1;

commit;