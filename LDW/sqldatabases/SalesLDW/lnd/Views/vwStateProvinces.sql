-- SELECT * and WITH to Define Columns type

CREATE VIEW lnd.vwStateProvinces
AS
SELECT * FROM 
OPENROWSET 
(
    BULK 'Application_StateProvinces/*.csv',
    DATA_SOURCE = 'MIdlakedevBronze',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE,
    FIELDTERMINATOR ='|'
)
WITH
(
    StateProvinceID TINYINT,
    StateProvinceCode CHAR(2),
    StateProvinceName VARCHAR(30),
    CountryID TINYINT,
    SalesTerritory VARCHAR(14),
    LatestRecordedPopulation INT
) AS fct;
GO

