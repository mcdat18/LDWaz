CREATE VIEW lnd.vwPackageTypes
AS
SELECT * FROM 
OPENROWSET 
(
    BULK 'Warehouse_PackageTypes/*.csv',
    DATA_SOURCE = 'MIdlakedevBronze',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE,
    FIELDTERMINATOR ='|'
) AS fct;
GO

