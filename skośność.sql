IF OBJECT_ID('dbo.dystry', 'FN') IS NOT NULL
    DROP FUNCTION dbo.dystry;
GO
IF OBJECT_ID('tempdb..#TabelaPomocnicza') IS NOT NULL
    DROP TABLE #TabelaPomocnicza
GO

-- tworzymy funkcje, ktora generuje dane numeryczne z zadana skosnoscia
CREATE FUNCTION dbo.dystry 
(@Mean FLOAT, @StDev FLOAT, @Skewness FLOAT, @c1 FLOAT, @c2 FLOAT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @skewed FLOAT
	SET @skewed = (@StDev * POWER(-2 * LOG(@c1), 1 / @Skewness) * COS(2 * ACOS(-1.) * @c2) + @Mean)
    RETURN @skewed
END;
GO

-- zmienna ILE okresla liczbe generowanych liczb
DECLARE @ILE INT = 100, @mean FLOAT = 45, @std_dev FLOAT = 7, @i INT = 1, @Skewness FLOAT = 2
CREATE TABLE #TabelaPomocnicza (n FLOAT) --tworzymy tabele tymczasowa, ktora przechowuje wyniki
WHILE @i <= @ILE
BEGIN
  DECLARE @u1 FLOAT, @u2 FLOAT, @x FLOAT
  SET @u1 = RAND(CHECKSUM(NEWID())) -- generujemy wartosci losowe u1
  SET @u2 = RAND(CHECKSUM(NEWID())) -- generujemy wartosci losowe u2
  SET @x = dbo.dystry(@mean, @std_dev, @Skewness, @u1, @u2) -- obliczanie wartosci 'x' na podstawie funkcji dbo.dystry()
  INSERT INTO #TabelaPomocnicza (n) VALUES (@x)
  SET @i = @i + 1
END

SELECT * FROM #TabelaPomocnicza -- wyswietlanie wartosci
DROP TABLE #TabelaPomocnicza -- usuwamy tabele tymczasowa
GO