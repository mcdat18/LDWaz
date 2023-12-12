CREATE VIEW lnd.vwSupplierCategories
AS
SELECT * FROM 
OPENROWSET 
(
    BULK 'Purchasing_SupplierCategories/*.csv',
    DATA_SOURCE = 'MIdlakedevBronze',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE,
    FIELDTERMINATOR ='|'
) AS fct;
GO

