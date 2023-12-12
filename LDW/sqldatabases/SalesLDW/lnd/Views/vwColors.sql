CREATE VIEW lnd.vwColors
AS
SELECT * FROM 
OPENROWSET 
(
    BULK 'Warehouse_Colors/*.csv',
    DATA_SOURCE = 'MIdlakedevBronze',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE,
    FIELDTERMINATOR ='|'
) AS fct;
GO

