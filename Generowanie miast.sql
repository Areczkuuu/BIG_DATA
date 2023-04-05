
DECLARE @temp AS TABLE (Miasto varchar(33), biezaca integer)
DECLARE @wylosowane  AS TABLE (Miasto varchar(33))
DECLARE @rand int, @rand1 float, @maks int, @licznik int=0, @ile int=100
INSERT INTO @temp
SELECT Miasta,
SUM(Ludnosc_ogolem) OVER (ORDER BY Ludnosc_ogolem DESC) AS Biezaca
FROM [MiastaSlownik]
SELECT @maks=MAX(Biezaca) FROM @temp

WHILE  @licznik<@ile
BEGIN
	SET @rand1=RAND()
	SET @rand=@maks*@rand1

	INSERT INTO @wylosowane
	SELECT t1.Miasto
	FROM @temp AS t1 JOIN MiastaSlownik AS t2
	ON Miasto=Miasta
	WHERE @rand BETWEEN t1.biezaca-t2.Ludnosc_ogolem AND t1.biezaca
	SET @licznik=@licznik+1
END

SELECT * FROM @wylosowane
