-- The remainder of the Views created will use the HEADER_ROW = TRUE syntax with SELECT * for code brevity

CREATE VIEW lnd.vwBuyingGroups
AS
SELECT * FROM 
OPENROWSET 
(
    BULK 'Sales_BuyingGroups/*.csv',
    DATA_SOURCE = 'MIdlakedevBronze',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE,
    FIELDTERMINATOR ='|'
) AS fct;
GO

