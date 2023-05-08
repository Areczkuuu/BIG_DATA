DROP PROCEDURE RandomCities

CREATE PROCEDURE RandomCities ( @NumberOfCities INT )   -- stworzenie procedury, kt�ra zwraca losowe miasta
AS
BEGIN
	DECLARE @randomCities AS TABLE (Miasto VARCHAR(33))  -- tabela tymczasowa z wylosowanymi miastami
    DECLARE @temp as TABLE (Miasto VARCHAR(33), sumLud INT)  -- tabela tymczasowa z miastami i sum� ludno�ci w tych miastach
    DECLARE @rand INT, @maks INT, @counter INT = 0

    INSERT INTO @temp
    SELECT Miasta, SUM(Ludnosc_ogolem) OVER (ORDER BY Ludnosc_ogolem DESC) AS biezac  -- tworzenie tab tymczasowej
    FROM [MiastaSlownik]

    SELECT @maks = MAX(sumLud) FROM @temp    -- maksymalna warto�� losowania
    WHILE  @counter < @NumberOfCities
    BEGIN
        SET @rand = @maks * RAND()   --losowe miasta
        INSERT INTO @randomCities
        SELECT t1.Miasto
        FROM @temp AS t1 JOIN MiastaSlownik AS t2
        ON Miasto = Miasta
        WHERE @rand BETWEEN t1.sumLud-t2.Ludnosc_ogolem AND t1.sumLud  -- warto�� losowa musi by� pomi�dzy sum� ludno�ci poprzednich miast, a sum� ludno�ci bie��cego miasta
        SET @counter = @counter + 1
    END
	SELECT * FROM @randomCities
END

EXEC RandomCities @NumberOfCities = 10

--select count(Miasta) from MiastaSlownik
