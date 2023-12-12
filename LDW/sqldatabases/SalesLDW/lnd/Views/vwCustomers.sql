CREATE VIEW lnd.vwCustomers
AS
SELECT * FROM 
OPENROWSET 
(
    BULK 'Sales_Customers/*.csv',
    DATA_SOURCE = 'MIdlakedevBronze',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE,
    FIELDTERMINATOR ='|'
) AS fct;
GO

