-- 2. SELECT specific columns

CREATE VIEW lnd.vwCities
AS
SELECT CityID,
        CityName,
        StateProvinceID,
        LatestRecordedPopulation
FROM 
OPENROWSET 
(
    BULK 'Application_Cities/*.csv',
    DATA_SOURCE = 'MIdlakedevBronze',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE,
    FIELDTERMINATOR ='|'
) AS fct;
GO

