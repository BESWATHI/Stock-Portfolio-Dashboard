-- Admin Insert
INSERT INTO Admin (Name, Password, Email) VALUES
('System Administrator', 'admin123@secure', 'admin@stocksystem.com');

-- Single User Insert
INSERT INTO User (UserName, UserEmail, Password) VALUES
('JohnDoe', 'john.doe@email.com', 'pass123');

-- Investor Insert (for the single user)
INSERT INTO Investor (PortfolioValue, InvestorStrategy, User_ID) VALUES
(null, 'Long-term Growth', 1);

-- Insert statement for Trader table 
INSERT INTO Trader (Trader_ID, TraderFrequency, RiskLevel, User_ID) VALUES
(1, 'Daily', 'High', 1);

-- Single Portfolio Insert
INSERT INTO Portfolio (Total_Loss, Total_Profit, PortfolioName, User_ID) VALUES
(null, null, 'Growth Portfolio', 1);

-- Tool Insert (30 records)
INSERT INTO Tool (ToolName, ToolType, Admin_ID) VALUES
('Moving Average', 'Technical', 1),
('RSI Calculator', 'Technical', 1),
('Bollinger Bands', 'Technical', 1),
('MACD Indicator', 'Technical', 1),
('Stochastic Oscillator', 'Technical', 1),
('Price Volume Trend', 'Technical', 1),
('On-Balance Volume', 'Technical', 1),
('Relative Vigor Index', 'Technical', 1),
('Average True Range', 'Technical', 1),
('Fibonacci Retracement', 'Technical', 1),
('PE Ratio Calculator', 'Fundamental', 1),
('Dividend Yield', 'Fundamental', 1),
('Book Value Analysis', 'Fundamental', 1),
('Cash Flow Analysis', 'Fundamental', 1),
('Debt-to-Equity', 'Fundamental', 1),
('ROE Calculator', 'Fundamental', 1),
('Market Cap Analysis', 'Fundamental', 1),
('Beta Calculator', 'Technical', 1),
('Volume Weighted Average', 'Technical', 1),
('Price Channel', 'Technical', 1),
('Momentum Indicator', 'Technical', 1),
('Williams %R', 'Technical', 1),
('Accumulation/Distribution', 'Technical', 1),
('Money Flow Index', 'Technical', 1),
('Chaikin Oscillator', 'Technical', 1),
('Rate of Change', 'Technical', 1),
('Commodity Channel Index', 'Technical', 1),
('Detrended Price', 'Technical', 1),
('Standard Deviation', 'Technical', 1),
('Price ROC', 'Technical', 1);
