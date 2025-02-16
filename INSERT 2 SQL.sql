-- Now generate recommendations for stocks
INSERT INTO Stock_Recommendation (User_ID, Stock_ID, Date_Recom, Tool_ID)
SELECT 
    1 as User_ID,
    s.Stock_ID,
    -- Generate recommendations for different dates in the last year
    CASE 
        WHEN t.ToolType = 'Technical' THEN DATE_SUB(CURRENT_DATE, INTERVAL FLOOR(1 + RAND() * 180) DAY)
        ELSE DATE_SUB(CURRENT_DATE, INTERVAL FLOOR(1 + RAND() * 365) DAY)
    END as Date_Recom,
    t.Tool_ID
FROM Stock s
CROSS JOIN Tool t
WHERE RAND() < 0.1  -- Randomly select ~10% of combinations
ORDER BY Date_Recom DESC;

-- Insert in Watchlist Table
INSERT INTO WATCHLIST (User_ID, Stock_ID) VALUES
(1, 4),
(1, 7),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),  
(1, 17),  
(1, 19),  
(1, 20),  
(1, 22),  
(1, 25),  
(1, 26),  
(1, 28),  
(1, 30),  
(1, 33),  
(1, 35),  
(1, 37),  
(1, 40); 
