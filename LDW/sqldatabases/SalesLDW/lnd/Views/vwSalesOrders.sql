-- 1. SELECT *, HEADER_ROW = TRUE

CREATE VIEW lnd.vwSalesOrders
AS
SELECT *,
CAST(fct.filepath(1) AS DATE) AS FilePathDate
FROM 
OPENROWSET 
(
    BULK 'sourcedatapartitionsalesorder/OrderDatePartition=*/*.csv',
    DATA_SOURCE = 'MIdlakedevBronze',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE,
    FIELDTERMINATOR ='|'
) AS fct;
GO

