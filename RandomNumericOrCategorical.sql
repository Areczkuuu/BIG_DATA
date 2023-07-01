DROP PROCEDURE IF EXISTS RandomNumericOrCategorical
GO
CREATE PROCEDURE RandomNumericOrCategorical
    @TableName NVARCHAR(200), @ColumnName NVARCHAR(200), @NumberOfRecords INT
AS
BEGIN
    DECLARE @ProcedureVariable NVARCHAR(MAX) -- deklaracja zmiennej, przechowuj¹ca zapytania, MAX - ¿eby wszystko siê w niej zmieœci³o
	-- utworzenie zapytania dynamicznego z tab tymczasow¹ i kol
	-- sprawdzamy warunkowo, czy mamy do czynienia ze zmienn¹ kategoryczn¹ czy numeryczn¹
	-- num - wstawiamy rekord do tab tymczasowej wybieraj¹c jedn¹ wartoœæ z podanej kol (select top 1)
	-- kat - tak samo jak num, ale na podstawie d³ugoœci zmiennej ...
    SET @ProcedureVariable = N' 
    DECLARE @HelperTable AS TABLE (RecordValue NVARCHAR(MAX))
    DECLARE @counter INT = 0
    DECLARE @maxVal INT
    DECLARE @randChoi INT
    DECLARE @randVar INT
    IF EXISTS (SELECT 1
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME = ' + QUOTENAME(@TableName, '''') + ' AND COLUMN_NAME = ' + QUOTENAME(@ColumnName, '''') + ' AND DATA_TYPE = ''int'')
    BEGIN
        SELECT @maxVal = MAX(' + QUOTENAME(@ColumnName) + ') 
        FROM ' + QUOTENAME(@TableName) + '
        WHILE @counter < @NumberOfRecords
        BEGIN
            SET @randChoi = RAND() * @maxVal
            INSERT INTO @HelperTable
            SELECT TOP 1 ' + QUOTENAME(@ColumnName) + '
            FROM ' + QUOTENAME(@TableName) + '
            WHERE ' + QUOTENAME(@ColumnName) + ' >= @randChoi
            ORDER BY ' + QUOTENAME(@ColumnName) + '
            SET @counter = @counter + 1
        END
    END
    ELSE
    BEGIN
        SELECT @maxVal = MAX(LEN(' + QUOTENAME(@ColumnName) + '))
        FROM ' + QUOTENAME(@TableName) + '
        WHILE @counter < @NumberOfRecords
        BEGIN
            SET @randVar = RAND() * @maxVal
            INSERT INTO @HelperTable
            SELECT TOP 1 ' + QUOTENAME(@ColumnName) + '
            FROM ' + QUOTENAME(@TableName) + '
            WHERE LEN(' + QUOTENAME(@ColumnName) + ') >= @randVar
            ORDER BY LEN(' + QUOTENAME(@ColumnName) + ')
            SET @counter = @counter + 1
        END
    END
    SELECT * FROM @HelperTable
    '
    EXEC sp_executesql @ProcedureVariable, N'@NumberOfRecords INT', @NumberOfRecords  -- wykonanie zapytania dynamicznego, przechowywanego w zmiennej @...
END
GO
	
-- Poniżej przykład użycia procedury

EXEC RandomNumericOrCategorical @TableName = 'Tabela_Osoby', @ColumnName = 'nazwisko', @NumberOfRecords = 10



