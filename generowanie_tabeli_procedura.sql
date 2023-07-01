--DROP PROCEDURE IF EXISTS GenerateTable
CREATE PROCEDURE GenerateTable
    @liczba_wierszy INT,
    @nazwa_tabeli_wyjsciowej NVARCHAR(100),
    @nazwa_tabeli_wejsciowej NVARCHAR(100),
    @nazwa_kolumna1 NVARCHAR(40), -- kolumna, która odpowiada za id
    @nazwa_kolumna2 NVARCHAR(40),
    @nazwa_kolumna3 NVARCHAR(40)
AS
BEGIN
    DECLARE @Dynamicznie NVARCHAR(MAX)    -- stworzenie tabeli wyjsciowej
    SET @Dynamicznie = 'CREATE TABLE ' + QUOTENAME(@nazwa_tabeli_wyjsciowej) + '(' + QUOTENAME(@nazwa_kolumna1) + 'INT,' + QUOTENAME(@nazwa_kolumna2) + 'NVARCHAR(40),' + QUOTENAME(@nazwa_kolumna3) + 'NVARCHAR(40));'
    EXEC sp_executesql @Dynamicznie;

         --wstawianie danych losowych do tabeli wyjsciowej

		 --generujemy numery wierszy dla danych losowych wybranych z tabeli
		 --order by newid - losowe sortowanie wierszy
		 --wstawianie danych do tabeli wyjsciowej na podstawie join (numer wiersza)
    SET @Dynamicznie = 'WITH Random AS(
		SELECT TOP ' + CAST(@liczba_wierszy AS NVARCHAR(10)) + ' ROW_NUMBER() OVER (ORDER BY NEWID()) AS numWiersz
		FROM ' + QUOTENAME(@nazwa_tabeli_wejsciowej) + '
		ORDER BY NEWID())
		INSERT INTO ' + QUOTENAME(@nazwa_tabeli_wyjsciowej) + ' (' + QUOTENAME(@nazwa_kolumna1) + ', ' + QUOTENAME(@nazwa_kolumna2) + ', ' + QUOTENAME(@nazwa_kolumna3) + ')
		SELECT
		r.numWiersz AS ' + QUOTENAME(@nazwa_kolumna1) + ',o1.' + QUOTENAME(@nazwa_kolumna2) + ',o2.' + QUOTENAME(@nazwa_kolumna3) + 'FROM Random r
		JOIN(SELECT ROW_NUMBER() OVER (ORDER BY NEWID()) AS numWiersz, ' + QUOTENAME(@nazwa_kolumna2) + 
		'FROM ' + QUOTENAME(@nazwa_tabeli_wejsciowej) + ')AS o1 ON r.numWiersz = o1.numWiersz
		JOIN(SELECT ROW_NUMBER() OVER (ORDER BY NEWID()) AS numWiersz, ' + QUOTENAME(@nazwa_kolumna3) + 
		'FROM ' + QUOTENAME(@nazwa_tabeli_wejsciowej) + ')AS o2 ON r.numWiersz = o2.numWiersz;'
    EXEC sp_executesql @Dynamicznie;
END

EXEC GenerateTable
    @liczba_wierszy = 10,
    @nazwa_tabeli_wyjsciowej = 'Tabela_proba',
    @nazwa_tabeli_wejsciowej = 'Tabela_osoby',
    @nazwa_kolumna1 = 'id_os',
    @nazwa_kolumna2 = 'nazwisko',
    @nazwa_kolumna3 = 'plec';
