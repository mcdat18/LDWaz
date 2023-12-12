CREATE VIEW lnd.vwSalesOrdersLines
AS
SELECT *,
CAST(fct.filepath(1) AS DATE) AS FilePathDate
FROM 
OPENROWSET 
(
    BULK 'sourcedatapartitionsalesorderline/OrderDate=*/*.csv',
    DATA_SOURCE = 'MIdlakedevBronze',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE,
    FIELDTERMINATOR ='|'
) AS fct;
GO

