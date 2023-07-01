--DROP FUNCTION IF EXISTS dbo.dystry
CREATE FUNCTION dbo.dystry 
(@Mean FLOAT, @StDev FLOAT, @c1 FLOAT, @c2 FLOAT)
RETURNS FLOAT
AS
BEGIN
    RETURN (@StDev * SQRT(-2 * LOG(@c1))*COS(2*ACOS(-1.)*@c2)) + @Mean
END;
GO

DECLARE @ILE INT = 100, @mean FLOAT = 10, @std_dev FLOAT = 1.5, @i INT = 1

CREATE TABLE #TempTable (n INT)

WHILE @i <= @ILE
BEGIN
  INSERT INTO #TempTable (n) VALUES (1)
  SET @i = @i + 1
END

SELECT dbo.dystry(@mean, @std_dev, RAND(CHECKSUM(NEWID())), RAND(CHECKSUM(NEWID()))) AS NUM
FROM #TempTable
DROP TABLE #TempTable
GO
