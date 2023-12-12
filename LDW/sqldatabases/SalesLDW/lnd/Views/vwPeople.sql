CREATE VIEW lnd.vwPeople
AS
SELECT * FROM 
OPENROWSET 
(
    BULK 'Application_People/*.csv',
    DATA_SOURCE = 'MIdlakedevBronze',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE,
    FIELDTERMINATOR ='|'
) AS fct;
GO

