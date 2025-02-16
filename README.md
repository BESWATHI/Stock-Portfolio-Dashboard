Designing and implementing a personal stock portfolio dashboard for a single user who
functions as both an investor and a trader was the main goal of this study. With the
ability to carry out an unlimited number of buy or sell transactions, the system facilitates
the smooth administration of stock operations Additionally, it offers a Watchlist Table
for wishing to buy stocks in the future and a Tool Table that gives the administrator the
ability to suggest companies depending on user preferences and market patterns.
Key tables like Stock, stock_historic_data and dividend_amount were used to link the
database into MySQL Workbench and contain data from the top 50 stocks that were
retrieved using the Python yfinance library. Sector-based analysis, profit and loss
computations, investment insights, and other important measures were all made
possible via SQL queries. Using NoSQL queries in MongoDB, the viability of handling
unstructured data was also investigated. Furthermore, an interactive Tableau dashboard
was created to offer user-friendly visualizations such as box plots, pie charts, scatter
plots, and histograms, improving the user's capacity to assess portfolio performance.
The database that was constructed is a huge success, and this study has shown some of
the enormous analytical possibilities that can be achieved by linking it to Tableau and
Python. Whether users are traders or investors, this dashboard provides a strong tool to
efficiently manage their portfolios. In order to prepare the project for its eventual
development into a fully effective personal money management tool, further
enhancements will involve the implementation of Data Governance mechanisms and
real-time monitoring tools.
